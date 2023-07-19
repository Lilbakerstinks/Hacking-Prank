function typewriterPrint(text, delay)
  for i = 1, #text do
    io.write(text:sub(i, i))
    io.flush()
    os.execute("sleep " .. delay)
  end
  print()
end

print("Booting up")
os.execute("sleep 1")

print("Setting up globals")
os.execute("sleep 1")

typewriterPrint("Locating password:", 0.1)
os.execute("sleep 3")

-- Generate a random word password for Roblox
local robloxPassword = ""
math.randomseed(os.time())
local wordLength = math.random(8, 12)  -- Random word length between 8 and 12 characters
for i = 1, wordLength do
  local char = string.char(math.random(97, 122))  -- Random lowercase letter
  robloxPassword = robloxPassword .. char
end
typewriterPrint("Roblox Password: " .. robloxPassword, 0.1)
os.execute("sleep 1")

-- Generate a random 4-digit main password
local mainPassword = tostring(math.random(1000, 9999))
typewriterPrint("Main Password: " .. mainPassword, 0.1)
os.execute("sleep 1")

local count = 1
local delay = 0.7

while count <= 1000 do
  print("Corruption Files Downloaded: " .. count)
  os.execute("sleep " .. delay)
  count = count + 1
  delay = delay * 0.9  -- Reduce the delay faster for a more rapid increase in speed
end

print("All files loaded")
os.execute("sleep 1")

print("Executing viruses...")
os.execute("sleep 1")

print("Uploading malicious code")
os.execute("sleep 5")

os.execute("sleep 3")  -- Wait for 3 seconds before clearing the page

-- Clear the terminal screen
os.execute("clear")

typewriterPrint("This is the malicious bug lol:", 0.1)
