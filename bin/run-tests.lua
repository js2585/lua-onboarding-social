local testsRoot = game.LoadedCode.tests

local _, ProcessService = pcall(game.GetService, game, "ProcessService")

local Packages = testsRoot.Packages
local Jest = require(Packages.Dev.Jest)
local UIBlox = require(Packages.UIBlox)
UIBlox.init()

print("Running tests")
local testNamePattern = _G["TESTEZ_TEST_NAME_PATTERN"] or ""
if testNamePattern ~= "" then
	print("Filtering tests with pattern \"" .. testNamePattern .. "\"")
end
if testNamePattern == "" then
	testNamePattern = nil
end

local additionalOptions = {
	testNamePattern = testNamePattern,
}

local function runTests()
	local results = Jest.TestBootstrap:run(
		{ testsRoot.Packages.LuaOnboardingSocial },
		Jest.Reporters.TextReporterQuiet,
		additionalOptions
	)

	return results.failureCount == 0 and 0 or 1
end

local function exit(f)
	local success, status = pcall(f)
	if ProcessService then
		ProcessService:ExitAsync(success and status or 1)
	end
end


exit(runTests)
