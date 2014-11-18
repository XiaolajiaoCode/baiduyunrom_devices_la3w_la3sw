.class public final enum Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;
.super Ljava/lang/Enum;
.source "AudioProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yeptelecom/audioprofile/AudioProfileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProfileSettings"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

.field public static final enum alarm_volume:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

.field public static final enum dtmftone_enabled:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

.field public static final enum emergency_tone:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

.field public static final enum hapticfeedback_enabled:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

.field public static final enum lockscreensound_enabled:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

.field public static final enum media_volume:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

.field public static final enum notification_stream:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

.field public static final enum notification_volume:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

.field public static final enum ringer_Stream_2:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

.field public static final enum ringer_stream:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

.field public static final enum ringer_volume:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

.field public static final enum soundeffect_enbled:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

.field public static final enum vibration_enabled:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 72
    new-instance v0, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    const-string/jumbo v1, "ringer_stream"

    invoke-direct {v0, v1, v3}, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ringer_stream:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    new-instance v0, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    const-string/jumbo v1, "notification_stream"

    invoke-direct {v0, v1, v4}, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->notification_stream:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    new-instance v0, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    const-string/jumbo v1, "ringer_Stream_2"

    invoke-direct {v0, v1, v5}, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ringer_Stream_2:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    .line 73
    new-instance v0, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    const-string/jumbo v1, "media_volume"

    invoke-direct {v0, v1, v6}, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->media_volume:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    new-instance v0, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    const-string/jumbo v1, "ringer_volume"

    invoke-direct {v0, v1, v7}, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ringer_volume:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    new-instance v0, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    const-string/jumbo v1, "notification_volume"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->notification_volume:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    new-instance v0, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    const-string v1, "alarm_volume"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->alarm_volume:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    .line 74
    new-instance v0, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    const-string/jumbo v1, "vibration_enabled"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->vibration_enabled:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    new-instance v0, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    const-string v1, "dtmftone_enabled"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->dtmftone_enabled:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    new-instance v0, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    const-string/jumbo v1, "soundeffect_enbled"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->soundeffect_enbled:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    new-instance v0, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    const-string v1, "hapticfeedback_enabled"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->hapticfeedback_enabled:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    .line 75
    new-instance v0, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    const-string v1, "lockscreensound_enabled"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->lockscreensound_enabled:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    new-instance v0, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    const-string v1, "emergency_tone"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->emergency_tone:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    .line 71
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    sget-object v1, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ringer_stream:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->notification_stream:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ringer_Stream_2:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->media_volume:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ringer_volume:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->notification_volume:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->alarm_volume:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->vibration_enabled:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->dtmftone_enabled:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->soundeffect_enbled:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->hapticfeedback_enabled:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->lockscreensound_enabled:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->emergency_tone:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    aput-object v2, v0, v1

    sput-object v0, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->$VALUES:[Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;
    .locals 1
    .parameter "name"

    .prologue
    .line 71
    const-class v0, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    return-object v0
.end method

.method public static values()[Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->$VALUES:[Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v0}, [Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    return-object v0
.end method
