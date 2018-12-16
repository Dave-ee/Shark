local user = "Dave-ee"
local repo = "Shark"
local path = "VERSION 1"
local branch = "master"

local extractFiles = true

local cPath = fs.getDir(shell.getRunningProgram())
-- thank you apemanzilla
local ggURL = "https://pastebin.com/raw/W5ZkVYSi"
local web = http.get(ggURL)
if web then
	web = web.readAll()
	load(web, nil, nil, _ENV)(user, repo, branch, ".gitget-temp")
	local p1, p2
	local ignore = {
		["README.md"] = true,
		[".gitignore"] = true,
		[".gitattributes"] = true
	}
	if extractFiles then
		local list = fs.list(fs.combine(cPath, ".gitget-temp/" .. path))
		for i = 1, #list do
			p1 = fs.combine(cPath, ".gitget-temp/" .. path .. "/" .. list[i])
			p2 = fs.combine(cPath, list[i])
			if not ignore[fs.getName(p1)] then
				fs.move(p1, p2)
			end
		end
		fs.delete(fs.combine(cPath, ".gitget-temp"))
	end
else
	error("Could not download.")
end
