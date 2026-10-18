# Function macro called by fdoors:dialog/show that handles displaying the dialog
# This is run BY the player to whom the dialog is being shown

$dialog show @s $(build)

# Return that this function ran successfully
return 1
