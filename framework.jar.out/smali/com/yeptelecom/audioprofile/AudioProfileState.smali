.class public Lcom/yeptelecom/audioprofile/AudioProfileState;
.super Ljava/lang/Object;
.source "AudioProfileState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yeptelecom/audioprofile/AudioProfileState$1;,
        Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;
    }
.end annotation


# instance fields
.field public mAlarmVolume:I

.field public mDtmfToneEnabled:Z

.field public mEmergencyToneValue:I

.field public mHapticFeedbackEnabled:Z

.field public mLockScreenSoundEnabled:Z

.field public mMediaVolume:I

.field public mNoficationUseRingVolume:Z

.field public mNotificationStream:Landroid/net/Uri;

.field public mNotificationVolume:I

.field public mProfileKey:Ljava/lang/String;

.field public mRingerStream:Landroid/net/Uri;

.field public mRingerStream2:Landroid/net/Uri;

.field public mRingerVolume:I

.field public mSoundEffectEnbled:Z

.field public mVibrationEnabled:Z


# direct methods
.method private constructor <init>(Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    .line 226
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 227
    #getter for: Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->mProfileKey:Ljava/lang/String;
    invoke-static {p1}, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->access$100(Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yeptelecom/audioprofile/AudioProfileState;->mProfileKey:Ljava/lang/String;

    .line 229
    #getter for: Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->mRingerStream:Landroid/net/Uri;
    invoke-static {p1}, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->access$200(Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/yeptelecom/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    .line 230
    #getter for: Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->mNotificationStream:Landroid/net/Uri;
    invoke-static {p1}, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->access$300(Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/yeptelecom/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    .line 231
    #getter for: Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->mRingerStream2:Landroid/net/Uri;
    invoke-static {p1}, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->access$400(Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/yeptelecom/audioprofile/AudioProfileState;->mRingerStream2:Landroid/net/Uri;

    .line 233
    #getter for: Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->mMediaVolume:I
    invoke-static {p1}, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->access$500(Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;)I

    move-result v0

    iput v0, p0, Lcom/yeptelecom/audioprofile/AudioProfileState;->mMediaVolume:I

    .line 234
    #getter for: Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->mRingerVolume:I
    invoke-static {p1}, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->access$600(Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;)I

    move-result v0

    iput v0, p0, Lcom/yeptelecom/audioprofile/AudioProfileState;->mRingerVolume:I

    .line 235
    #getter for: Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->mAlarmVolume:I
    invoke-static {p1}, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->access$700(Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;)I

    move-result v0

    iput v0, p0, Lcom/yeptelecom/audioprofile/AudioProfileState;->mAlarmVolume:I

    .line 236
    #getter for: Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->mNotificationVolume:I
    invoke-static {p1}, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->access$800(Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;)I

    move-result v0

    iput v0, p0, Lcom/yeptelecom/audioprofile/AudioProfileState;->mNotificationVolume:I

    .line 238
    #getter for: Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->mVibrationEnabled:Z
    invoke-static {p1}, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->access$900(Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yeptelecom/audioprofile/AudioProfileState;->mVibrationEnabled:Z

    .line 239
    #getter for: Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->mSoundEffectEnbled:Z
    invoke-static {p1}, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->access$1000(Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yeptelecom/audioprofile/AudioProfileState;->mSoundEffectEnbled:Z

    .line 240
    #getter for: Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->mDtmfToneEnabled:Z
    invoke-static {p1}, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->access$1100(Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yeptelecom/audioprofile/AudioProfileState;->mDtmfToneEnabled:Z

    .line 241
    #getter for: Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->mHapticFeedbackEnabled:Z
    invoke-static {p1}, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->access$1200(Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yeptelecom/audioprofile/AudioProfileState;->mHapticFeedbackEnabled:Z

    .line 242
    #getter for: Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->mLockScreenSoundEnabled:Z
    invoke-static {p1}, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->access$1300(Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yeptelecom/audioprofile/AudioProfileState;->mLockScreenSoundEnabled:Z

    .line 243
    #getter for: Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->mNoficationUseRingVolume:Z
    invoke-static {p1}, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->access$1400(Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yeptelecom/audioprofile/AudioProfileState;->mNoficationUseRingVolume:Z

    .line 244
    #getter for: Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->mEmergencyToneValue:I
    invoke-static {p1}, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->access$1500(Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;)I

    move-result v0

    iput v0, p0, Lcom/yeptelecom/audioprofile/AudioProfileState;->mEmergencyToneValue:I

    .line 245
    return-void
.end method

.method synthetic constructor <init>(Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;Lcom/yeptelecom/audioprofile/AudioProfileState$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/yeptelecom/audioprofile/AudioProfileState;-><init>(Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;)V

    return-void
.end method

.method public constructor <init>([Landroid/net/Uri;[I[Z[I)V
    .locals 14
    .parameter "uri"
    .parameter "volume"
    .parameter "enalbed"
    .parameter "value"

    .prologue
    .line 270
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 273
    const/4 v8, 0x0

    .line 274
    .local v8, INDEX_RINGER_STREAM:I
    const/4 v6, 0x1

    .line 275
    .local v6, INDEX_NOTIFICATION_STREAM:I
    const/4 v9, 0x2

    .line 276
    .local v9, INDEX_RINGER_STREAM_2:I
    const/4 v5, 0x0

    .line 277
    .local v5, INDEX_MEDIA_VOLUME:I
    const/4 v10, 0x1

    .line 278
    .local v10, INDEX_RINGER_VOLUME:I
    const/4 v7, 0x2

    .line 279
    .local v7, INDEX_NOTIFICATION_VOLUME:I
    const/4 v0, 0x3

    .line 280
    .local v0, INDEX_ALARM_VOLUME:I
    const/4 v12, 0x0

    .line 281
    .local v12, INDEX_VIBRATION_ENABLED:I
    const/4 v1, 0x1

    .line 282
    .local v1, INDEX_DTMF_TONE_ENABLED:I
    const/4 v11, 0x2

    .line 283
    .local v11, INDEX_SOUND_EFFECT_ENABLED:I
    const/4 v4, 0x3

    .line 284
    .local v4, INDEX_LOCK_SCREEN_SOUND_ENABLED:I
    const/4 v3, 0x4

    .line 285
    .local v3, INDEX_HAPTIC_FEEDBACK_ENABLED:I
    const/4 v2, 0x0

    .line 288
    .local v2, INDEX_EMERGENCY_TONE_VALUE:I
    const/4 v13, 0x0

    aget-object v13, p1, v13

    iput-object v13, p0, Lcom/yeptelecom/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    .line 289
    const/4 v13, 0x1

    aget-object v13, p1, v13

    iput-object v13, p0, Lcom/yeptelecom/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    .line 290
    const/4 v13, 0x2

    aget-object v13, p1, v13

    iput-object v13, p0, Lcom/yeptelecom/audioprofile/AudioProfileState;->mRingerStream2:Landroid/net/Uri;

    .line 292
    const/4 v13, 0x0

    aget v13, p2, v13

    iput v13, p0, Lcom/yeptelecom/audioprofile/AudioProfileState;->mMediaVolume:I

    .line 293
    const/4 v13, 0x1

    aget v13, p2, v13

    iput v13, p0, Lcom/yeptelecom/audioprofile/AudioProfileState;->mRingerVolume:I

    .line 294
    const/4 v13, 0x2

    aget v13, p2, v13

    iput v13, p0, Lcom/yeptelecom/audioprofile/AudioProfileState;->mNotificationVolume:I

    .line 295
    const/4 v13, 0x3

    aget v13, p2, v13

    iput v13, p0, Lcom/yeptelecom/audioprofile/AudioProfileState;->mAlarmVolume:I

    .line 297
    const/4 v13, 0x0

    aget-boolean v13, p3, v13

    iput-boolean v13, p0, Lcom/yeptelecom/audioprofile/AudioProfileState;->mVibrationEnabled:Z

    .line 298
    const/4 v13, 0x1

    aget-boolean v13, p3, v13

    iput-boolean v13, p0, Lcom/yeptelecom/audioprofile/AudioProfileState;->mDtmfToneEnabled:Z

    .line 299
    const/4 v13, 0x2

    aget-boolean v13, p3, v13

    iput-boolean v13, p0, Lcom/yeptelecom/audioprofile/AudioProfileState;->mSoundEffectEnbled:Z

    .line 300
    const/4 v13, 0x3

    aget-boolean v13, p3, v13

    iput-boolean v13, p0, Lcom/yeptelecom/audioprofile/AudioProfileState;->mLockScreenSoundEnabled:Z

    .line 301
    const/4 v13, 0x4

    aget-boolean v13, p3, v13

    iput-boolean v13, p0, Lcom/yeptelecom/audioprofile/AudioProfileState;->mHapticFeedbackEnabled:Z

    .line 302
    const/4 v13, 0x0

    aget v13, p4, v13

    iput v13, p0, Lcom/yeptelecom/audioprofile/AudioProfileState;->mEmergencyToneValue:I

    .line 303
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 307
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 308
    .local v0, buffer:Ljava/lang/StringBuffer;
    const-string/jumbo v1, "volume_media = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileState;->mMediaVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 309
    const-string/jumbo v1, "volume_ringtone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileState;->mRingerVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 310
    const-string/jumbo v1, "volume_notification = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileState;->mNotificationVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 311
    const-string/jumbo v1, "volume_alarm = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileState;->mAlarmVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 313
    const-string/jumbo v1, "vibrate_on = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileState;->mVibrationEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 314
    const-string v1, "dtmf_tone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileState;->mDtmfToneEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 315
    const-string/jumbo v1, "sound_effects = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileState;->mSoundEffectEnbled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 316
    const-string v1, "lockscreen_sounds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileState;->mLockScreenSoundEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 317
    const-string v1, "haptic_feedback = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileState;->mHapticFeedbackEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 318
    const-string v1, "emergency_tone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileState;->mEmergencyToneValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 320
    const-string/jumbo v1, "ringtone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 321
    const-string/jumbo v1, "notification_sound = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 322
    const-string/jumbo v1, "ringtone2 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileState;->mRingerStream2:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 323
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
