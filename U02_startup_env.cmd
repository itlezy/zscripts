REM MAIN BACKUP DISK (SOURCE)
SETX BAK_SRC_DRV           "w"
REM RAR WITH PASSWORD DEST (can be not encrypted)
SETX BAK_RARWPASS_DST_DRV  "d j m o q"
REM ROBOCOPY MIR DEST (DOC AND RARs, must be encrypted)
SETX BAK_MIR_DST_DRV       "d j o q"

SETX ALL_DRIVES            "c d e f g h i j k l m n o p q r s t u v w x y z"
SETX ALL_DRIVES_NOC          "d e f g h i j k l m n o p q r s t u v w x y z"
