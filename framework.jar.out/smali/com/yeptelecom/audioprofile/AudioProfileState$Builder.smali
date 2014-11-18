.class public Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;
.super Ljava/lang/Object;
.source "AudioProfileState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yeptelecom/audioprofile/AudioProfileState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAlarmVolume:I

.field private mDtmfToneEnabled:Z

.field private mEmergencyToneValue:I

.field private mHapticFeedbackEnabled:Z

.field private mLockScreenSoundEnabled:Z

.field private mMediaVolume:I

.field private mNoficationUseRingVolume:Z

.field private mNotificationStream:Landroid/net/Uri;

.field private mNotificationVolume:I

.field private mProfileKey:Ljava/lang/String;

.field private mRingerStream:Landroid/net/Uri;

.field private mRingerStream2:Landroid/net/Uri;

.field private mRingerVolume:I

.field private mSoundEffectEnbled:Z

.field private mVibrationEnabled:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "profileKey"

    .prologue
    const/4 v1, 0x0

    .line 109
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 89
    sget-object v0, Lcom/yeptelecom/audioprofile/AudioProfileManager;->DEFAULT_RINGER_STREAM_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->mRingerStream:Landroid/net/Uri;

    .line 90
    sget-object v0, Lcom/yeptelecom/audioprofile/AudioProfileManager;->DEFAULT_NOTIFICATION_STREAM_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->mNotificationStream:Landroid/net/Uri;

    .line 91
    sget-object v0, Lcom/yeptelecom/audioprofile/AudioProfileManager;->DEFAULT_RINGER_STREAM_URI_2:Landroid/net/Uri;

    iput-object v0, p0, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->mRingerStream2:Landroid/net/Uri;

    .line 92
    iput v1, p0, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->mMediaVolume:I

    .line 93
    iput v1, p0, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->mRingerVolume:I

    .line 94
    iput v1, p0, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->mNotificationVolume:I

    .line 95
    iput v1, p0, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->mAlarmVolume:I

    .line 96
    iput-boolean v1, p0, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->mVibrationEnabled:Z

    .line 97
    iput-boolean v1, p0, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->mDtmfToneEnabled:Z

    .line 98
    iput-boolean v1, p0, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->mSoundEffectEnbled:Z

    .line 99
    iput-boolean v1, p0, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->mLockScreenSoundEnabled:Z

    .line 100
    iput-boolean v1, p0, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->mHapticFeedbackEnabled:Z

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->mNoficationUseRingVolume:Z

    .line 102
    iput v1, p0, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->mEmergencyToneValue:I

    .line 110
    iput-object p1, p0, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->mProfileKey:Ljava/lang/String;

    .line 111
    return-void
.end method

.method static synthetic access$100(Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->mProfileKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->mSoundEffectEnbled:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->mDtmfToneEnabled:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->mHapticFeedbackEnabled:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->mLockScreenSoundEnabled:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->mNoficationUseRingVolume:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget v0, p0, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->mEmergencyToneValue:I

    return v0
.end method

.method static synthetic access$200(Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->mRingerStream:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$300(Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->mNotificationStream:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$400(Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->mRingerStream2:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$500(Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget v0, p0, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->mMediaVolume:I

    return v0
.end method

.method static synthetic access$600(Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget v0, p0, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->mRingerVolume:I

    return v0
.end method

.method static synthetic access$700(Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget v0, p0, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->mAlarmVolume:I

    return v0
.end method

.method static synthetic access$800(Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget v0, p0, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->mNotificationVolume:I

    return v0
.end method

.method static synthetic access$900(Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->mVibrationEnabled:Z

    return v0
.end method


# virtual methods
.method public build()Lcom/yeptelecom/audioprofile/AudioProfileState;
    .locals 2

    .prologue
    .line 217
    new-instance v0, Lcom/yeptelecom/audioprofile/AudioProfileState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/yeptelecom/audioprofile/AudioProfileState;-><init>(Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;Lcom/yeptelecom/audioprofile/AudioProfileState$1;)V

    return-object v0
.end method

.method public dtmfTone(Z)Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;
    .locals 0
    .parameter "enable"

    .prologue
    .line 163
    iput-boolean p1, p0, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->mDtmfToneEnabled:Z

    .line 164
    return-object p0
.end method

.method public emergencyTone(I)Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;
    .locals 0
    .parameter "value"

    .prologue
    .line 207
    iput p1, p0, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->mEmergencyToneValue:I

    .line 208
    return-object p0
.end method

.method public hapticFeedback(Z)Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;
    .locals 0
    .parameter "enable"

    .prologue
    .line 196
    iput-boolean p1, p0, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->mHapticFeedbackEnabled:Z

    .line 197
    return-object p0
.end method

.method public lockScreenSound(Z)Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;
    .locals 0
    .parameter "enable"

    .prologue
    .line 185
    iput-boolean p1, p0, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->mLockScreenSoundEnabled:Z

    .line 186
    return-object p0
.end method

.method public ringtone(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;
    .locals 0
    .parameter "voiceCallUri"
    .parameter "notificationUri"
    .parameter "voiceCallUri2"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->mRingerStream:Landroid/net/Uri;

    .line 124
    iput-object p2, p0, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->mNotificationStream:Landroid/net/Uri;

    .line 125
    iput-object p3, p0, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->mRingerStream2:Landroid/net/Uri;

    .line 126
    return-object p0
.end method

.method public soundEffect(Z)Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;
    .locals 0
    .parameter "enable"

    .prologue
    .line 174
    iput-boolean p1, p0, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->mSoundEffectEnbled:Z

    .line 175
    return-object p0
.end method

.method public vibration(Z)Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;
    .locals 0
    .parameter "enable"

    .prologue
    .line 152
    iput-boolean p1, p0, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->mVibrationEnabled:Z

    .line 153
    return-object p0
.end method

.method public volume(IIII)Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;
    .locals 0
    .parameter "mediaVolume"
    .parameter "ringerVolume"
    .parameter "notificationVolume"
    .parameter "alarmVolume"

    .prologue
    .line 138
    iput p1, p0, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->mMediaVolume:I

    .line 139
    iput p2, p0, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->mRingerVolume:I

    .line 140
    iput p3, p0, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->mNotificationVolume:I

    .line 141
    iput p4, p0, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->mAlarmVolume:I

    .line 142
    return-object p0
.end method
