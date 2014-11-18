.class public Lcom/yeptelecom/audioprofile/AudioProfileManager;
.super Ljava/lang/Object;
.source "AudioProfileManager.java"

# interfaces
.implements Lcom/yeptelecom/common/audioprofile/IAudioProfileManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;,
        Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;
    }
.end annotation


# static fields
.field public static final ACTION_PROFILE_CHANGED:Ljava/lang/String; = "com.yeptelecom.audioprofile.ACTION_PROFILE_CHANGED"

.field private static DEFAULTSTATES:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/yeptelecom/audioprofile/AudioProfileState;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_NOTIFICATION_STREAM_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_RINGER_STREAM_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_RINGER_STREAM_URI_2:Landroid/net/Uri; = null

.field public static final EXTRA_PROFILE_SCENARIO:Ljava/lang/String; = "com.yeptelecom.audioprofile.EXTRA_PROFILE_SCENARIO"

.field public static final KEY_ACTIVE_PROFILE:Ljava/lang/String; = "yep_audioprofile_active"

.field public static final KEY_DEFAULT_NOTIFICATION:Ljava/lang/String; = "yep_audioprofile_default_notification"

.field public static final KEY_DEFAULT_RINGTONE:Ljava/lang/String; = "yep_audioprofile_default_ringtone"

.field public static final KEY_DEFAULT_RINGTONE_2:Ljava/lang/String; = "yep_audioprofile_default_ringtone2"

.field public static final LAST_ACTIVE_CUSTOM_DELETED:Ljava/lang/String; = "yep_audioprofile_custom_deleted"

.field public static final LAST_ACTIVE_PROFILE:Ljava/lang/String; = "yep_audioprofile_last_active"

.field public static final MAX_PROFILES_COUNT:I = 0xa

.field public static final PREDEFINED_PROFILES_COUNT:I = 0x4

.field public static final PROFILE_PREFIX:Ljava/lang/String; = "yep_audioprofile_"

.field public static final STREAM_ALARM:I = 0x4

.field public static final STREAM_MEDIA:I = 0x3

.field public static final STREAM_NOTIFICATION:I = 0x5

.field public static final STREAM_RING:I = 0x2

.field private static final SUFFIX_ALARM_VOLUME:Ljava/lang/String; = "_volume_alarm"

.field private static final SUFFIX_DTMFTONE:Ljava/lang/String; = "_dtmf_tone_enabled"

.field private static final SUFFIX_EMERGENCY_TONE:Ljava/lang/String; = "_emergency_tone_value"

.field private static final SUFFIX_HAPTICFEEDBACK:Ljava/lang/String; = "_haptic_feedback_enabled"

.field protected static final SUFFIX_KEY:Ljava/lang/String; = "_key"

.field private static final SUFFIX_LOCK_SCRREN:Ljava/lang/String; = "_lockscreen_sounds_enabled"

.field private static final SUFFIX_MEDIA_VOLUME:Ljava/lang/String; = "_volume_media"

.field protected static final SUFFIX_NAME:Ljava/lang/String; = "_name"

.field private static final SUFFIX_NOTIFICATION_URI:Ljava/lang/String; = "_notification_sound"

.field private static final SUFFIX_NOTIFICATION_USE_RING:Ljava/lang/String; = "_notifications_use_ring_volume"

.field private static final SUFFIX_NOTIFICATION_VOLUME:Ljava/lang/String; = "_volume_notification"

.field private static final SUFFIX_RINGER_URI:Ljava/lang/String; = "_ringtone"

.field private static final SUFFIX_RINGER_URI_2:Ljava/lang/String; = "_ringtone2"

.field private static final SUFFIX_RINGER_VOLUME:Ljava/lang/String; = "_volume_ring"

.field private static final SUFFIX_SOUNDEFFECT:Ljava/lang/String; = "_sound_effects_enabled"

.field private static final SUFFIX_VIBRATION:Ljava/lang/String; = "_vibrate_on"

.field private static final TAG:Ljava/lang/String; = "AudioProfileManager"

.field public static final TYPE_NOTIFICATION:I = 0x2

.field public static final TYPE_RINGTONE:I = 0x1

.field public static final TYPE_RINGTONE_2:I = 0x8

.field public static final UNSUPPORT_STREAM_VOLUME:I

.field private static mService:Lcom/yeptelecom/common/audioprofile/IAudioProfileService;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 177
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    sput-object v0, Lcom/yeptelecom/audioprofile/AudioProfileManager;->DEFAULT_RINGER_STREAM_URI:Landroid/net/Uri;

    .line 182
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    sput-object v0, Lcom/yeptelecom/audioprofile/AudioProfileManager;->DEFAULT_NOTIFICATION_STREAM_URI:Landroid/net/Uri;

    .line 186
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI_2:Landroid/net/Uri;

    sput-object v0, Lcom/yeptelecom/audioprofile/AudioProfileManager;->DEFAULT_RINGER_STREAM_URI_2:Landroid/net/Uri;

    .line 189
    const/4 v0, 0x0

    sput-object v0, Lcom/yeptelecom/audioprofile/AudioProfileManager;->DEFAULTSTATES:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 200
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 201
    iput-object p1, p0, Lcom/yeptelecom/audioprofile/AudioProfileManager;->mContext:Landroid/content/Context;

    .line 202
    return-void
.end method

.method public static getAllKeys(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .parameter "profileKey"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    .line 683
    if-nez p0, :cond_0

    .line 684
    const-string v2, "AudioProfileManager"

    const-string v3, "getAllKeys: Null profileKey!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    const/4 v1, 0x0

    .line 705
    :goto_0
    return-object v1

    .line 688
    :cond_0
    const/16 v0, 0xe

    .line 689
    .local v0, KEYS_SIZE:I
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 690
    .local v1, keys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 691
    invoke-static {p0}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getProfileNameKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 692
    invoke-static {p0}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getNotificationUseRingKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 693
    invoke-static {p0}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getLockScreenKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 694
    invoke-static {p0}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getHapticKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 695
    invoke-static {p0}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getDtmfToneKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 696
    invoke-static {p0}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getSoundEffectKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 697
    invoke-static {p0}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getVibrationKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 698
    const/4 v2, 0x4

    invoke-static {p0, v2}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getStreamVolumeKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 699
    const/4 v2, 0x5

    invoke-static {p0, v2}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getStreamVolumeKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 700
    invoke-static {p0, v3}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getStreamVolumeKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 701
    const/4 v2, 0x3

    invoke-static {p0, v2}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getStreamVolumeKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 702
    invoke-static {p0, v3}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 703
    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 704
    const/16 v2, 0x8

    invoke-static {p0, v2}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getDefaultState(Ljava/lang/String;)Lcom/yeptelecom/audioprofile/AudioProfileState;
    .locals 55
    .parameter "profileKey"

    .prologue
    .line 232
    sget-object v50, Lcom/yeptelecom/audioprofile/AudioProfileManager;->DEFAULTSTATES:Ljava/util/HashMap;

    if-nez v50, :cond_1

    .line 233
    const-class v50, Lcom/yeptelecom/common/audioprofile/IAudioProfileExtension$IDefaultProfileStatesGetter;

    const/16 v51, 0x0

    move/from16 v0, v51

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v51, v0

    invoke-static/range {v50 .. v51}, Lcom/yeptelecom/common/YepClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/yeptelecom/common/audioprofile/IAudioProfileExtension$IDefaultProfileStatesGetter;

    .line 235
    .local v43, defaultProfileStatesGetter:Lcom/yeptelecom/common/audioprofile/IAudioProfileExtension$IDefaultProfileStatesGetter;
    if-eqz v43, :cond_0

    .line 236
    invoke-interface/range {v43 .. v43}, Lcom/yeptelecom/common/audioprofile/IAudioProfileExtension$IDefaultProfileStatesGetter;->getDefaultProfileStates()Ljava/util/HashMap;

    move-result-object v50

    sput-object v50, Lcom/yeptelecom/audioprofile/AudioProfileManager;->DEFAULTSTATES:Ljava/util/HashMap;

    .line 239
    :cond_0
    sget-object v50, Lcom/yeptelecom/audioprofile/AudioProfileManager;->DEFAULTSTATES:Ljava/util/HashMap;

    if-nez v50, :cond_1

    .line 240
    new-instance v50, Ljava/util/HashMap;

    const/16 v51, 0x4

    invoke-direct/range {v50 .. v51}, Ljava/util/HashMap;-><init>(I)V

    sput-object v50, Lcom/yeptelecom/audioprofile/AudioProfileManager;->DEFAULTSTATES:Ljava/util/HashMap;

    .line 244
    const/16 v23, 0xc

    .line 245
    .local v23, DEFAULT_MEDIA_VOLUME_GENERAL:I
    const/16 v26, 0x0

    .line 246
    .local v26, DEFAULT_MEDIA_VOLUME_SILENT:I
    const/16 v24, 0x0

    .line 247
    .local v24, DEFAULT_MEDIA_VOLUME_MEETING:I
    const/16 v25, 0xf

    .line 250
    .local v25, DEFAULT_MEDIA_VOLUME_OUTDOOR:I
    const/16 v31, 0x5

    .line 251
    .local v31, DEFAULT_RINGER_VOLUME_GENERAL:I
    const/16 v34, 0x0

    .line 252
    .local v34, DEFAULT_RINGER_VOLUME_SILENT:I
    const/16 v32, 0x0

    .line 253
    .local v32, DEFAULT_RINGER_VOLUME_MEETING:I
    const/16 v33, 0x7

    .line 256
    .local v33, DEFAULT_RINGER_VOLUME_OUTDOOR:I
    const/16 v27, 0x5

    .line 257
    .local v27, DEFAULT_NOTIFICATION_VOLUME_GENERAL:I
    const/16 v30, 0x0

    .line 258
    .local v30, DEFAULT_NOTIFICATION_VOLUME_SILENT:I
    const/16 v28, 0x0

    .line 259
    .local v28, DEFAULT_NOTIFICATION_VOLUME_MEETING:I
    const/16 v29, 0x7

    .line 262
    .local v29, DEFAULT_NOTIFICATION_VOLUME_OUTDOOR:I
    const/4 v3, 0x6

    .line 263
    .local v3, DEFAULT_ALARM_VOLUME_GENERAL:I
    const/4 v6, 0x0

    .line 264
    .local v6, DEFAULT_ALARM_VOLUME_SILENT:I
    const/4 v4, 0x0

    .line 265
    .local v4, DEFAULT_ALARM_VOLUME_MEETING:I
    const/4 v5, 0x7

    .line 269
    .local v5, DEFAULT_ALARM_VOLUME_OUTDOOR:I
    const/16 v39, 0x0

    .line 270
    .local v39, DEFAULT_VIBRATION_GENERAL:Z
    const/16 v42, 0x0

    .line 271
    .local v42, DEFAULT_VIBRATION_SILENT:Z
    const/16 v40, 0x1

    .line 272
    .local v40, DEFAULT_VIBRATION_MEETING:Z
    const/16 v41, 0x1

    .line 278
    .local v41, DEFAULT_VIBRATION_OUTDOOR:Z
    const/4 v7, 0x1

    .line 279
    .local v7, DEFAULT_DTMFTONE_GENERAL:Z
    const/4 v10, 0x0

    .line 280
    .local v10, DEFAULT_DTMFTONE_SILENT:Z
    const/4 v8, 0x0

    .line 281
    .local v8, DEFAULT_DTMFTONE_MEETING:Z
    const/4 v9, 0x1

    .line 287
    .local v9, DEFAULT_DTMFTONE_OUTDOOR:Z
    const/16 v35, 0x0

    .line 288
    .local v35, DEFAULT_SOUNDEFFECT_GENERAL:Z
    const/16 v38, 0x0

    .line 289
    .local v38, DEFAULT_SOUNDEFFECT_SILENT:Z
    const/16 v36, 0x0

    .line 290
    .local v36, DEFAULT_SOUNDEFFECT_MEETING:Z
    const/16 v37, 0x1

    .line 293
    .local v37, DEFAULT_SOUNDEFFECT_OUTDOOR:Z
    const/16 v19, 0x1

    .line 294
    .local v19, DEFAULT_LOCK_SCREEN_GENERAL:Z
    const/16 v22, 0x0

    .line 295
    .local v22, DEFAULT_LOCK_SCREEN_SILENT:Z
    const/16 v20, 0x0

    .line 296
    .local v20, DEFAULT_LOCK_SCREEN_MEETING:Z
    const/16 v21, 0x1

    .line 299
    .local v21, DEFAULT_LOCK_SCREEN_OUTDOOR:Z
    const/4 v15, 0x1

    .line 300
    .local v15, DEFAULT_HAPTIC_FEEDBACK_GENERAL:Z
    const/16 v18, 0x0

    .line 301
    .local v18, DEFAULT_HAPTIC_FEEDBACK_SILENT:Z
    const/16 v16, 0x0

    .line 302
    .local v16, DEFAULT_HAPTIC_FEEDBACK_MEETING:Z
    const/16 v17, 0x1

    .line 305
    .local v17, DEFAULT_HAPTIC_FEEDBACK_OUTDOOR:Z
    const/4 v11, 0x0

    .line 306
    .local v11, DEFAULT_EMERGENCY_TONE_GENERAL:I
    const/4 v14, 0x0

    .line 307
    .local v14, DEFAULT_EMERGENCY_TONE_SILENT:I
    const/4 v12, 0x0

    .line 308
    .local v12, DEFAULT_EMERGENCY_TONE_MEETING:I
    const/4 v13, 0x0

    .line 311
    .local v13, DEFAULT_EMERGENCY_TONE_OUTDOOR:I
    new-instance v50, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;

    sget-object v51, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    invoke-static/range {v51 .. v51}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getProfileKey(Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v51

    invoke-direct/range {v50 .. v51}, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;-><init>(Ljava/lang/String;)V

    sget-object v51, Lcom/yeptelecom/audioprofile/AudioProfileManager;->DEFAULT_RINGER_STREAM_URI:Landroid/net/Uri;

    sget-object v52, Lcom/yeptelecom/audioprofile/AudioProfileManager;->DEFAULT_NOTIFICATION_STREAM_URI:Landroid/net/Uri;

    sget-object v53, Lcom/yeptelecom/audioprofile/AudioProfileManager;->DEFAULT_RINGER_STREAM_URI_2:Landroid/net/Uri;

    invoke-virtual/range {v50 .. v53}, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->ringtone(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;

    move-result-object v50

    const/16 v51, 0xc

    const/16 v52, 0x5

    const/16 v53, 0x5

    const/16 v54, 0x6

    invoke-virtual/range {v50 .. v54}, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->volume(IIII)Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;

    move-result-object v50

    const/16 v51, 0x0

    invoke-virtual/range {v50 .. v51}, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->vibration(Z)Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;

    move-result-object v50

    const/16 v51, 0x1

    invoke-virtual/range {v50 .. v51}, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->dtmfTone(Z)Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;

    move-result-object v50

    const/16 v51, 0x0

    invoke-virtual/range {v50 .. v51}, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->soundEffect(Z)Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;

    move-result-object v50

    const/16 v51, 0x1

    invoke-virtual/range {v50 .. v51}, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->lockScreenSound(Z)Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;

    move-result-object v50

    const/16 v51, 0x1

    invoke-virtual/range {v50 .. v51}, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->hapticFeedback(Z)Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;

    move-result-object v50

    const/16 v51, 0x0

    invoke-virtual/range {v50 .. v51}, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->emergencyTone(I)Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->build()Lcom/yeptelecom/audioprofile/AudioProfileState;

    move-result-object v44

    .line 323
    .local v44, generalState:Lcom/yeptelecom/audioprofile/AudioProfileState;
    sget-object v50, Lcom/yeptelecom/audioprofile/AudioProfileManager;->DEFAULTSTATES:Ljava/util/HashMap;

    sget-object v51, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual/range {v51 .. v51}, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v51

    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v51

    move-object/from16 v0, v50

    move-object/from16 v1, v51

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    new-instance v50, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;

    sget-object v51, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    invoke-static/range {v51 .. v51}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getProfileKey(Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v51

    invoke-direct/range {v50 .. v51}, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;-><init>(Ljava/lang/String;)V

    sget-object v51, Lcom/yeptelecom/audioprofile/AudioProfileManager;->DEFAULT_RINGER_STREAM_URI:Landroid/net/Uri;

    sget-object v52, Lcom/yeptelecom/audioprofile/AudioProfileManager;->DEFAULT_NOTIFICATION_STREAM_URI:Landroid/net/Uri;

    sget-object v53, Lcom/yeptelecom/audioprofile/AudioProfileManager;->DEFAULT_RINGER_STREAM_URI_2:Landroid/net/Uri;

    invoke-virtual/range {v50 .. v53}, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->ringtone(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;

    move-result-object v50

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    invoke-virtual/range {v50 .. v54}, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->volume(IIII)Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;

    move-result-object v50

    const/16 v51, 0x0

    invoke-virtual/range {v50 .. v51}, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->vibration(Z)Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;

    move-result-object v50

    const/16 v51, 0x0

    invoke-virtual/range {v50 .. v51}, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->dtmfTone(Z)Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;

    move-result-object v50

    const/16 v51, 0x0

    invoke-virtual/range {v50 .. v51}, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->soundEffect(Z)Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;

    move-result-object v50

    const/16 v51, 0x0

    invoke-virtual/range {v50 .. v51}, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->lockScreenSound(Z)Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;

    move-result-object v50

    const/16 v51, 0x0

    invoke-virtual/range {v50 .. v51}, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->hapticFeedback(Z)Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;

    move-result-object v50

    const/16 v51, 0x0

    invoke-virtual/range {v50 .. v51}, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->emergencyTone(I)Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->build()Lcom/yeptelecom/audioprofile/AudioProfileState;

    move-result-object v49

    .line 338
    .local v49, silentState:Lcom/yeptelecom/audioprofile/AudioProfileState;
    sget-object v50, Lcom/yeptelecom/audioprofile/AudioProfileManager;->DEFAULTSTATES:Ljava/util/HashMap;

    sget-object v51, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual/range {v51 .. v51}, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v51

    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v51

    move-object/from16 v0, v50

    move-object/from16 v1, v51

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    new-instance v50, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;

    sget-object v51, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->MEETING:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    invoke-static/range {v51 .. v51}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getProfileKey(Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v51

    invoke-direct/range {v50 .. v51}, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;-><init>(Ljava/lang/String;)V

    sget-object v51, Lcom/yeptelecom/audioprofile/AudioProfileManager;->DEFAULT_RINGER_STREAM_URI:Landroid/net/Uri;

    sget-object v52, Lcom/yeptelecom/audioprofile/AudioProfileManager;->DEFAULT_NOTIFICATION_STREAM_URI:Landroid/net/Uri;

    sget-object v53, Lcom/yeptelecom/audioprofile/AudioProfileManager;->DEFAULT_RINGER_STREAM_URI_2:Landroid/net/Uri;

    invoke-virtual/range {v50 .. v53}, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->ringtone(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;

    move-result-object v50

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    invoke-virtual/range {v50 .. v54}, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->volume(IIII)Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;

    move-result-object v50

    const/16 v51, 0x1

    invoke-virtual/range {v50 .. v51}, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->vibration(Z)Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;

    move-result-object v50

    const/16 v51, 0x0

    invoke-virtual/range {v50 .. v51}, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->dtmfTone(Z)Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;

    move-result-object v50

    const/16 v51, 0x0

    invoke-virtual/range {v50 .. v51}, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->soundEffect(Z)Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;

    move-result-object v50

    const/16 v51, 0x0

    invoke-virtual/range {v50 .. v51}, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->lockScreenSound(Z)Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;

    move-result-object v50

    const/16 v51, 0x0

    invoke-virtual/range {v50 .. v51}, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->hapticFeedback(Z)Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;

    move-result-object v50

    const/16 v51, 0x0

    invoke-virtual/range {v50 .. v51}, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->emergencyTone(I)Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->build()Lcom/yeptelecom/audioprofile/AudioProfileState;

    move-result-object v46

    .line 353
    .local v46, meetingState:Lcom/yeptelecom/audioprofile/AudioProfileState;
    sget-object v50, Lcom/yeptelecom/audioprofile/AudioProfileManager;->DEFAULTSTATES:Ljava/util/HashMap;

    sget-object v51, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->MEETING:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual/range {v51 .. v51}, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v51

    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v51

    move-object/from16 v0, v50

    move-object/from16 v1, v51

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    new-instance v50, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;

    sget-object v51, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->OUTDOOR:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    invoke-static/range {v51 .. v51}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getProfileKey(Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v51

    invoke-direct/range {v50 .. v51}, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;-><init>(Ljava/lang/String;)V

    sget-object v51, Lcom/yeptelecom/audioprofile/AudioProfileManager;->DEFAULT_RINGER_STREAM_URI:Landroid/net/Uri;

    sget-object v52, Lcom/yeptelecom/audioprofile/AudioProfileManager;->DEFAULT_NOTIFICATION_STREAM_URI:Landroid/net/Uri;

    sget-object v53, Lcom/yeptelecom/audioprofile/AudioProfileManager;->DEFAULT_RINGER_STREAM_URI_2:Landroid/net/Uri;

    invoke-virtual/range {v50 .. v53}, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->ringtone(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;

    move-result-object v50

    const/16 v51, 0xf

    const/16 v52, 0x7

    const/16 v53, 0x7

    const/16 v54, 0x7

    invoke-virtual/range {v50 .. v54}, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->volume(IIII)Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;

    move-result-object v50

    const/16 v51, 0x1

    invoke-virtual/range {v50 .. v51}, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->vibration(Z)Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;

    move-result-object v50

    const/16 v51, 0x1

    invoke-virtual/range {v50 .. v51}, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->dtmfTone(Z)Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;

    move-result-object v50

    const/16 v51, 0x1

    invoke-virtual/range {v50 .. v51}, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->soundEffect(Z)Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;

    move-result-object v50

    const/16 v51, 0x1

    invoke-virtual/range {v50 .. v51}, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->lockScreenSound(Z)Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;

    move-result-object v50

    const/16 v51, 0x1

    invoke-virtual/range {v50 .. v51}, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->hapticFeedback(Z)Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;

    move-result-object v50

    const/16 v51, 0x0

    invoke-virtual/range {v50 .. v51}, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->emergencyTone(I)Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->build()Lcom/yeptelecom/audioprofile/AudioProfileState;

    move-result-object v47

    .line 368
    .local v47, outdoorState:Lcom/yeptelecom/audioprofile/AudioProfileState;
    sget-object v50, Lcom/yeptelecom/audioprofile/AudioProfileManager;->DEFAULTSTATES:Ljava/util/HashMap;

    sget-object v51, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->OUTDOOR:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual/range {v51 .. v51}, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v51

    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v51

    move-object/from16 v0, v50

    move-object/from16 v1, v51

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    const-string v50, "AudioProfileManager"

    const-string v51, "getDefaultState from default!"

    invoke-static/range {v50 .. v51}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    .end local v3           #DEFAULT_ALARM_VOLUME_GENERAL:I
    .end local v4           #DEFAULT_ALARM_VOLUME_MEETING:I
    .end local v5           #DEFAULT_ALARM_VOLUME_OUTDOOR:I
    .end local v6           #DEFAULT_ALARM_VOLUME_SILENT:I
    .end local v7           #DEFAULT_DTMFTONE_GENERAL:Z
    .end local v8           #DEFAULT_DTMFTONE_MEETING:Z
    .end local v9           #DEFAULT_DTMFTONE_OUTDOOR:Z
    .end local v10           #DEFAULT_DTMFTONE_SILENT:Z
    .end local v11           #DEFAULT_EMERGENCY_TONE_GENERAL:I
    .end local v12           #DEFAULT_EMERGENCY_TONE_MEETING:I
    .end local v13           #DEFAULT_EMERGENCY_TONE_OUTDOOR:I
    .end local v14           #DEFAULT_EMERGENCY_TONE_SILENT:I
    .end local v15           #DEFAULT_HAPTIC_FEEDBACK_GENERAL:Z
    .end local v16           #DEFAULT_HAPTIC_FEEDBACK_MEETING:Z
    .end local v17           #DEFAULT_HAPTIC_FEEDBACK_OUTDOOR:Z
    .end local v18           #DEFAULT_HAPTIC_FEEDBACK_SILENT:Z
    .end local v19           #DEFAULT_LOCK_SCREEN_GENERAL:Z
    .end local v20           #DEFAULT_LOCK_SCREEN_MEETING:Z
    .end local v21           #DEFAULT_LOCK_SCREEN_OUTDOOR:Z
    .end local v22           #DEFAULT_LOCK_SCREEN_SILENT:Z
    .end local v23           #DEFAULT_MEDIA_VOLUME_GENERAL:I
    .end local v24           #DEFAULT_MEDIA_VOLUME_MEETING:I
    .end local v25           #DEFAULT_MEDIA_VOLUME_OUTDOOR:I
    .end local v26           #DEFAULT_MEDIA_VOLUME_SILENT:I
    .end local v27           #DEFAULT_NOTIFICATION_VOLUME_GENERAL:I
    .end local v28           #DEFAULT_NOTIFICATION_VOLUME_MEETING:I
    .end local v29           #DEFAULT_NOTIFICATION_VOLUME_OUTDOOR:I
    .end local v30           #DEFAULT_NOTIFICATION_VOLUME_SILENT:I
    .end local v31           #DEFAULT_RINGER_VOLUME_GENERAL:I
    .end local v32           #DEFAULT_RINGER_VOLUME_MEETING:I
    .end local v33           #DEFAULT_RINGER_VOLUME_OUTDOOR:I
    .end local v34           #DEFAULT_RINGER_VOLUME_SILENT:I
    .end local v35           #DEFAULT_SOUNDEFFECT_GENERAL:Z
    .end local v36           #DEFAULT_SOUNDEFFECT_MEETING:Z
    .end local v37           #DEFAULT_SOUNDEFFECT_OUTDOOR:Z
    .end local v38           #DEFAULT_SOUNDEFFECT_SILENT:Z
    .end local v39           #DEFAULT_VIBRATION_GENERAL:Z
    .end local v40           #DEFAULT_VIBRATION_MEETING:Z
    .end local v41           #DEFAULT_VIBRATION_OUTDOOR:Z
    .end local v42           #DEFAULT_VIBRATION_SILENT:Z
    .end local v43           #defaultProfileStatesGetter:Lcom/yeptelecom/common/audioprofile/IAudioProfileExtension$IDefaultProfileStatesGetter;
    .end local v44           #generalState:Lcom/yeptelecom/audioprofile/AudioProfileState;
    .end local v46           #meetingState:Lcom/yeptelecom/audioprofile/AudioProfileState;
    .end local v47           #outdoorState:Lcom/yeptelecom/audioprofile/AudioProfileState;
    .end local v49           #silentState:Lcom/yeptelecom/audioprofile/AudioProfileState;
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    move-result-object v48

    .line 374
    .local v48, scenario:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;
    if-nez v48, :cond_2

    .line 375
    const-string v50, "AudioProfileManager"

    const-string v51, "getDefaultState: get null scenario and use custom scenario default!"

    invoke-static/range {v50 .. v51}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    sget-object v48, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    .line 378
    :cond_2
    invoke-virtual/range {v48 .. v48}, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v45

    .line 379
    .local v45, index:I
    sget-object v50, Lcom/yeptelecom/audioprofile/AudioProfileManager;->DEFAULTSTATES:Ljava/util/HashMap;

    invoke-virtual/range {v50 .. v50}, Ljava/util/HashMap;->size()I

    move-result v50

    move/from16 v0, v45

    move/from16 v1, v50

    if-lt v0, v1, :cond_3

    .line 380
    sget-object v50, Lcom/yeptelecom/audioprofile/AudioProfileManager;->DEFAULTSTATES:Ljava/util/HashMap;

    const/16 v51, 0x0

    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Lcom/yeptelecom/audioprofile/AudioProfileState;

    .line 382
    :goto_0
    return-object v50

    :cond_3
    sget-object v50, Lcom/yeptelecom/audioprofile/AudioProfileManager;->DEFAULTSTATES:Ljava/util/HashMap;

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Lcom/yeptelecom/audioprofile/AudioProfileState;

    goto :goto_0
.end method

.method public static getDtmfToneKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "profileKey"

    .prologue
    .line 430
    if-eqz p0, :cond_0

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_dtmf_tone_enabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 433
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getEmergencyToneKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "profileKey"

    .prologue
    .line 460
    if-eqz p0, :cond_0

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_emergency_tone_value"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 463
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getHapticKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "profileKey"

    .prologue
    .line 445
    if-eqz p0, :cond_0

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_haptic_feedback_enabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 448
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "profileKey"

    .prologue
    .line 620
    if-eqz p0, :cond_0

    .line 621
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_key"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 623
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getLockScreenKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "profileKey"

    .prologue
    .line 577
    if-eqz p0, :cond_0

    .line 578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_lockscreen_sounds_enabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 580
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getNotificationUseRingKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "profileKey"

    .prologue
    .line 592
    if-eqz p0, :cond_0

    .line 593
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_notifications_use_ring_volume"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 595
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getProfileKey(Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;
    .locals 2
    .parameter "scenario"

    .prologue
    .line 635
    if-eqz p0, :cond_0

    .line 636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "yep_audioprofile_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 639
    :goto_0
    return-object v0

    .line 638
    :cond_0
    const-string v0, "AudioProfileManager"

    const-string v1, "getProfileKey with null scenario!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getProfileNameKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "profileKey"

    .prologue
    .line 606
    if-eqz p0, :cond_0

    .line 607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 609
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getScenario(Ljava/lang/String;)Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;
    .locals 8
    .parameter "profileKey"

    .prologue
    .line 650
    if-nez p0, :cond_0

    .line 651
    const-string v5, "AudioProfileManager"

    const-string v6, "getScenario: Null key! Return CUSTOM as default!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    sget-object v5, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    .line 672
    :goto_0
    return-object v5

    .line 655
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 656
    .local v2, keyLen:I
    const-string/jumbo v5, "yep_audioprofile_"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    .line 657
    .local v4, startIndex:I
    if-ge v2, v4, :cond_1

    .line 658
    const-string v5, "AudioProfileManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getScenario: Invalid key :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",Return CUSTOM as default!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    sget-object v5, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    goto :goto_0

    .line 662
    :cond_1
    const/16 v5, 0x5f

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 664
    .local v1, endIndex:I
    const/4 v5, -0x1

    if-ne v1, v5, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .end local v1           #endIndex:I
    :cond_2
    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 667
    .local v3, scenarioStr:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->valueOf(Ljava/lang/String;)Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 668
    :catch_0
    move-exception v0

    .line 669
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v5, "AudioProfileManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can not convert string "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v3, :cond_3

    const-string/jumbo v3, "null"

    .end local v3           #scenarioStr:Ljava/lang/String;
    :cond_3
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to Scenario type!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    sget-object v5, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    goto :goto_0
.end method

.method private static getService()Lcom/yeptelecom/common/audioprofile/IAudioProfileService;
    .locals 2

    .prologue
    .line 210
    sget-object v1, Lcom/yeptelecom/audioprofile/AudioProfileManager;->mService:Lcom/yeptelecom/common/audioprofile/IAudioProfileService;

    if-eqz v1, :cond_0

    .line 211
    sget-object v1, Lcom/yeptelecom/audioprofile/AudioProfileManager;->mService:Lcom/yeptelecom/common/audioprofile/IAudioProfileService;

    .line 215
    .local v0, binder:Landroid/os/IBinder;
    :goto_0
    return-object v1

    .line 213
    .end local v0           #binder:Landroid/os/IBinder;
    :cond_0
    const-string v1, "audioprofile"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 214
    .restart local v0       #binder:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/yeptelecom/common/audioprofile/IAudioProfileService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yeptelecom/common/audioprofile/IAudioProfileService;

    move-result-object v1

    sput-object v1, Lcom/yeptelecom/audioprofile/AudioProfileManager;->mService:Lcom/yeptelecom/common/audioprofile/IAudioProfileService;

    .line 215
    sget-object v1, Lcom/yeptelecom/audioprofile/AudioProfileManager;->mService:Lcom/yeptelecom/common/audioprofile/IAudioProfileService;

    goto :goto_0
.end method

.method public static getSoundEffectKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "profileKey"

    .prologue
    .line 415
    if-eqz p0, :cond_0

    .line 416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_sound_effects_enabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 418
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getStreamUriKey(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter "profileKey"
    .parameter "type"

    .prologue
    .line 520
    if-eqz p0, :cond_0

    .line 521
    const/4 v0, 0x0

    .line 522
    .local v0, uriKey:Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 536
    const-string v1, "AudioProfileManager"

    const-string v2, "getStreamUriKey with unsupport type!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    .end local v0           #uriKey:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 524
    .restart local v0       #uriKey:Ljava/lang/String;
    :sswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_ringtone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 525
    goto :goto_0

    .line 528
    :sswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_notification_sound"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 529
    goto :goto_0

    .line 532
    :sswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_ringtone2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 533
    goto :goto_0

    .line 540
    .end local v0           #uriKey:Ljava/lang/String;
    :cond_0
    const-string v1, "AudioProfileManager"

    const-string v2, "getStreamUriKey with null profile key!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    const/4 v0, 0x0

    goto :goto_0

    .line 522
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

.method public static getStreamUriKeys(I)Ljava/util/List;
    .locals 9
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 555
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 556
    .local v3, keys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->values()[Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    move-result-object v0

    .local v0, arr$:[Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v6, v0, v1

    .line 557
    .local v6, scenario:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;
    sget-object v7, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v7, v6}, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    sget-object v7, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v7, v6}, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 558
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "yep_audioprofile_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 559
    .local v5, prefix:Ljava/lang/String;
    invoke-static {v5, p0}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 560
    .local v2, key:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 561
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 556
    .end local v2           #key:Ljava/lang/String;
    .end local v5           #prefix:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 565
    .end local v6           #scenario:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;
    :cond_1
    return-object v3
.end method

.method public static getStreamVolumeKey(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter "profileKey"
    .parameter "type"

    .prologue
    .line 479
    if-eqz p0, :cond_0

    .line 480
    const/4 v0, 0x0

    .line 481
    .local v0, volumeKey:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 498
    const-string v1, "AudioProfileManager"

    const-string v2, "getStreamVolumeKey with unsupport type!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    .end local v0           #volumeKey:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 483
    .restart local v0       #volumeKey:Ljava/lang/String;
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_volume_media"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 484
    goto :goto_0

    .line 486
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_volume_ring"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 487
    goto :goto_0

    .line 490
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_volume_notification"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 491
    goto :goto_0

    .line 494
    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_volume_alarm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 495
    goto :goto_0

    .line 502
    .end local v0           #volumeKey:Ljava/lang/String;
    :cond_0
    const-string v1, "AudioProfileManager"

    const-string v2, "getStreamVolumeKey with null profile key!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    const/4 v0, 0x0

    goto :goto_0

    .line 481
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public static getVibrationKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "profileKey"

    .prologue
    .line 399
    if-eqz p0, :cond_0

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_vibrate_on"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 402
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addProfile()Ljava/lang/String;
    .locals 4

    .prologue
    .line 738
    invoke-static {}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getService()Lcom/yeptelecom/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 740
    .local v1, service:Lcom/yeptelecom/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1}, Lcom/yeptelecom/common/audioprofile/IAudioProfileService;->addProfile()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 743
    :goto_0
    return-object v2

    .line 741
    :catch_0
    move-exception v0

    .line 742
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in setActiveProfile"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 743
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public deleteProfile(Ljava/lang/String;)Z
    .locals 5
    .parameter "profileKey"

    .prologue
    const/4 v2, 0x0

    .line 754
    if-nez p1, :cond_0

    .line 755
    const-string v3, "AudioProfileManager"

    const-string v4, "deleteProfile with null profile key!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    :goto_0
    return v2

    .line 759
    :cond_0
    invoke-static {}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getService()Lcom/yeptelecom/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 761
    .local v1, service:Lcom/yeptelecom/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/yeptelecom/common/audioprofile/IAudioProfileService;->deleteProfile(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 762
    :catch_0
    move-exception v0

    .line 763
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "AudioProfileManager"

    const-string v4, "Dead object in deleteProfile"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getActiveProfileKey()Ljava/lang/String;
    .locals 4

    .prologue
    .line 873
    invoke-static {}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getService()Lcom/yeptelecom/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 875
    .local v1, service:Lcom/yeptelecom/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1}, Lcom/yeptelecom/common/audioprofile/IAudioProfileService;->getActiveProfileKey()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 878
    :goto_0
    return-object v2

    .line 876
    :catch_0
    move-exception v0

    .line 877
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in getActiveProfileKey"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 878
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getAllProfileKeys()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 802
    invoke-static {}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getService()Lcom/yeptelecom/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 804
    .local v1, service:Lcom/yeptelecom/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1}, Lcom/yeptelecom/common/audioprofile/IAudioProfileService;->getAllProfileKeys()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 807
    :goto_0
    return-object v2

    .line 805
    :catch_0
    move-exception v0

    .line 806
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in getAllProfileKeys"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 807
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getCustomizedProfileKeys()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 834
    invoke-static {}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getService()Lcom/yeptelecom/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 836
    .local v1, service:Lcom/yeptelecom/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1}, Lcom/yeptelecom/common/audioprofile/IAudioProfileService;->getCustomizedProfileKeys()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 839
    :goto_0
    return-object v2

    .line 837
    :catch_0
    move-exception v0

    .line 838
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in getCustomizedProfileKeys"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 839
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getDefaultRingtone(I)Landroid/net/Uri;
    .locals 4
    .parameter "type"

    .prologue
    .line 1474
    invoke-static {}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getService()Lcom/yeptelecom/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1476
    .local v1, service:Lcom/yeptelecom/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/yeptelecom/common/audioprofile/IAudioProfileService;->getDefaultRingtone(I)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1479
    :goto_0
    return-object v2

    .line 1477
    :catch_0
    move-exception v0

    .line 1478
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in isRingtoneExist"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1479
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getDtmfToneEnabled(Ljava/lang/String;)Z
    .locals 5
    .parameter "profileKey"

    .prologue
    const/4 v2, 0x0

    .line 996
    if-nez p1, :cond_0

    .line 997
    const-string v3, "AudioProfileManager"

    const-string v4, "getDtmfToneEnabled with null profile key!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    :goto_0
    return v2

    .line 1001
    :cond_0
    invoke-static {}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getService()Lcom/yeptelecom/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1003
    .local v1, service:Lcom/yeptelecom/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/yeptelecom/common/audioprofile/IAudioProfileService;->getDtmfToneEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1004
    :catch_0
    move-exception v0

    .line 1005
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "AudioProfileManager"

    const-string v4, "Dead object in getDtmfToneEnabled"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getEmergencyToneValue(Ljava/lang/String;)I
    .locals 5
    .parameter "profileKey"

    .prologue
    const/4 v2, 0x0

    .line 1084
    if-nez p1, :cond_0

    .line 1085
    const-string v3, "AudioProfileManager"

    const-string v4, "getEmergencyToneEnabled with null profile key!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    :goto_0
    return v2

    .line 1089
    :cond_0
    invoke-static {}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getService()Lcom/yeptelecom/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1091
    .local v1, service:Lcom/yeptelecom/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/yeptelecom/common/audioprofile/IAudioProfileService;->getEmergencyToneValue(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1092
    :catch_0
    move-exception v0

    .line 1093
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "AudioProfileManager"

    const-string v4, "Dead object in getEmergencyToneEnabled"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getHapticFeedbackEnabled(Ljava/lang/String;)Z
    .locals 5
    .parameter "profileKey"

    .prologue
    const/4 v2, 0x0

    .line 1062
    if-nez p1, :cond_0

    .line 1063
    const-string v3, "AudioProfileManager"

    const-string v4, "getHapticFeedbackEnabled with null profile key!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    :goto_0
    return v2

    .line 1067
    :cond_0
    invoke-static {}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getService()Lcom/yeptelecom/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1069
    .local v1, service:Lcom/yeptelecom/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/yeptelecom/common/audioprofile/IAudioProfileService;->getHapticFeedbackEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1070
    :catch_0
    move-exception v0

    .line 1071
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "AudioProfileManager"

    const-string v4, "Dead object in getHapticFeedbackEnabled"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getLastActiveProfileKey()Ljava/lang/String;
    .locals 4

    .prologue
    .line 888
    invoke-static {}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getService()Lcom/yeptelecom/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 890
    .local v1, service:Lcom/yeptelecom/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1}, Lcom/yeptelecom/common/audioprofile/IAudioProfileService;->getLastActiveProfileKey()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 893
    :goto_0
    return-object v2

    .line 891
    :catch_0
    move-exception v0

    .line 892
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in getLastActiveProfileKey"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 893
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getLockScreenEnabled(Ljava/lang/String;)Z
    .locals 5
    .parameter "profileKey"

    .prologue
    const/4 v2, 0x0

    .line 1040
    if-nez p1, :cond_0

    .line 1041
    const-string v3, "AudioProfileManager"

    const-string v4, "getLockScreenEnabled with null profile key!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    :goto_0
    return v2

    .line 1045
    :cond_0
    invoke-static {}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getService()Lcom/yeptelecom/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1047
    .local v1, service:Lcom/yeptelecom/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/yeptelecom/common/audioprofile/IAudioProfileService;->getLockScreenEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1048
    :catch_0
    move-exception v0

    .line 1049
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "AudioProfileManager"

    const-string v4, "Dead object in getLockScreenEnabled"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getPredefinedProfileKeys()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 819
    invoke-static {}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getService()Lcom/yeptelecom/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 821
    .local v1, service:Lcom/yeptelecom/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1}, Lcom/yeptelecom/common/audioprofile/IAudioProfileService;->getPredefinedProfileKeys()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 824
    :goto_0
    return-object v2

    .line 822
    :catch_0
    move-exception v0

    .line 823
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in getPredefinedProfileKeys"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 824
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getProfileCount()I
    .locals 4

    .prologue
    .line 787
    invoke-static {}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getService()Lcom/yeptelecom/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 789
    .local v1, service:Lcom/yeptelecom/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1}, Lcom/yeptelecom/common/audioprofile/IAudioProfileService;->getProfileCount()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 792
    :goto_0
    return v2

    .line 790
    :catch_0
    move-exception v0

    .line 791
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in deleteProfile"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 792
    const/16 v2, 0xa

    goto :goto_0
.end method

.method public getProfileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "profileKey"

    .prologue
    const/4 v2, 0x0

    .line 1172
    if-nez p1, :cond_0

    .line 1173
    const-string v3, "AudioProfileManager"

    const-string v4, "getProfileName with null profile key!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    :goto_0
    return-object v2

    .line 1177
    :cond_0
    invoke-static {}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getService()Lcom/yeptelecom/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1179
    .local v1, service:Lcom/yeptelecom/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/yeptelecom/common/audioprofile/IAudioProfileService;->getProfileName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 1180
    :catch_0
    move-exception v0

    .line 1181
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "AudioProfileManager"

    const-string v4, "Dead object in getProfileName"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getProfileState(Ljava/lang/String;)Lcom/yeptelecom/audioprofile/AudioProfileState;
    .locals 24
    .parameter "profileKey"

    .prologue
    .line 1106
    if-nez p1, :cond_0

    .line 1107
    const-string v21, "AudioProfileManager"

    const-string v22, "getProfileState with null profile key!"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    const/4 v12, 0x0

    .line 1161
    :goto_0
    return-object v12

    .line 1112
    :cond_0
    invoke-static {}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getService()Lcom/yeptelecom/common/audioprofile/IAudioProfileService;

    move-result-object v14

    .line 1114
    .local v14, service:Lcom/yeptelecom/common/audioprofile/IAudioProfileService;
    :try_start_0
    move-object/from16 v0, p1

    invoke-interface {v14, v0}, Lcom/yeptelecom/common/audioprofile/IAudioProfileService;->getProfileStateString(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    .line 1120
    .local v16, state:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v21, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ringer_stream:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual/range {v21 .. v21}, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v21

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 1121
    .local v17, value:Ljava/lang/String;
    if-nez v17, :cond_1

    const/16 v19, 0x0

    .line 1122
    .local v19, voiceCallUri:Landroid/net/Uri;
    :goto_1
    sget-object v21, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->notification_stream:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual/range {v21 .. v21}, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v21

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    .end local v17           #value:Ljava/lang/String;
    check-cast v17, Ljava/lang/String;

    .line 1123
    .restart local v17       #value:Ljava/lang/String;
    if-nez v17, :cond_2

    const/4 v10, 0x0

    .line 1124
    .local v10, notificationUri:Landroid/net/Uri;
    :goto_2
    sget-object v21, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ringer_Stream_2:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual/range {v21 .. v21}, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v21

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    .end local v17           #value:Ljava/lang/String;
    check-cast v17, Ljava/lang/String;

    .line 1125
    .restart local v17       #value:Ljava/lang/String;
    if-nez v17, :cond_3

    const/16 v20, 0x0

    .line 1127
    .local v20, voiceCallUri2:Landroid/net/Uri;
    :goto_3
    sget-object v21, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->media_volume:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual/range {v21 .. v21}, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v21

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    .end local v17           #value:Ljava/lang/String;
    check-cast v17, Ljava/lang/String;

    .line 1128
    .restart local v17       #value:Ljava/lang/String;
    if-nez v17, :cond_4

    const/4 v9, 0x0

    .line 1129
    .local v9, mediaVolume:I
    :goto_4
    sget-object v21, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ringer_volume:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual/range {v21 .. v21}, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v21

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    .end local v17           #value:Ljava/lang/String;
    check-cast v17, Ljava/lang/String;

    .line 1130
    .restart local v17       #value:Ljava/lang/String;
    if-nez v17, :cond_5

    const/4 v13, 0x0

    .line 1131
    .local v13, ringerVolume:I
    :goto_5
    sget-object v21, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->notification_volume:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual/range {v21 .. v21}, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v21

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    .end local v17           #value:Ljava/lang/String;
    check-cast v17, Ljava/lang/String;

    .line 1132
    .restart local v17       #value:Ljava/lang/String;
    if-nez v17, :cond_6

    const/4 v11, 0x0

    .line 1133
    .local v11, notificationVolume:I
    :goto_6
    sget-object v21, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->alarm_volume:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual/range {v21 .. v21}, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v21

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    .end local v17           #value:Ljava/lang/String;
    check-cast v17, Ljava/lang/String;

    .line 1134
    .restart local v17       #value:Ljava/lang/String;
    if-nez v17, :cond_7

    const/4 v3, 0x0

    .line 1136
    .local v3, alarmVolume:I
    :goto_7
    sget-object v21, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->vibration_enabled:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual/range {v21 .. v21}, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v21

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    .end local v17           #value:Ljava/lang/String;
    check-cast v17, Ljava/lang/String;

    .line 1137
    .restart local v17       #value:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    .line 1138
    .local v18, vibration:Z
    sget-object v21, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->dtmftone_enabled:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual/range {v21 .. v21}, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v21

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    .end local v17           #value:Ljava/lang/String;
    check-cast v17, Ljava/lang/String;

    .line 1139
    .restart local v17       #value:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 1140
    .local v4, dtmfTone:Z
    sget-object v21, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->soundeffect_enbled:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual/range {v21 .. v21}, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v21

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    .end local v17           #value:Ljava/lang/String;
    check-cast v17, Ljava/lang/String;

    .line 1141
    .restart local v17       #value:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    .line 1142
    .local v15, soundEffect:Z
    sget-object v21, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->lockscreensound_enabled:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual/range {v21 .. v21}, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v21

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    .end local v17           #value:Ljava/lang/String;
    check-cast v17, Ljava/lang/String;

    .line 1143
    .restart local v17       #value:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 1144
    .local v8, lockScreensound:Z
    sget-object v21, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->hapticfeedback_enabled:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual/range {v21 .. v21}, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v21

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    .end local v17           #value:Ljava/lang/String;
    check-cast v17, Ljava/lang/String;

    .line 1145
    .restart local v17       #value:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 1146
    .local v7, hapticFeedback:Z
    sget-object v21, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->emergency_tone:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual/range {v21 .. v21}, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v21

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    .end local v17           #value:Ljava/lang/String;
    check-cast v17, Ljava/lang/String;

    .line 1147
    .restart local v17       #value:Ljava/lang/String;
    if-nez v17, :cond_8

    const/4 v6, 0x0

    .line 1149
    .local v6, emergencyTone:I
    :goto_8
    new-instance v21, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v10, v2}, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->ringtone(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9, v13, v11, v3}, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->volume(IIII)Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->vibration(Z)Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->dtmfTone(Z)Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->soundEffect(Z)Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->lockScreenSound(Z)Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->hapticFeedback(Z)Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->emergencyTone(I)Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->build()Lcom/yeptelecom/audioprofile/AudioProfileState;

    move-result-object v12

    .line 1159
    .local v12, profileState:Lcom/yeptelecom/audioprofile/AudioProfileState;
    const-string v21, "AudioProfileManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "getProfileState for profileKey = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ": "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v12}, Lcom/yeptelecom/audioprofile/AudioProfileState;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1115
    .end local v3           #alarmVolume:I
    .end local v4           #dtmfTone:Z
    .end local v6           #emergencyTone:I
    .end local v7           #hapticFeedback:Z
    .end local v8           #lockScreensound:Z
    .end local v9           #mediaVolume:I
    .end local v10           #notificationUri:Landroid/net/Uri;
    .end local v11           #notificationVolume:I
    .end local v12           #profileState:Lcom/yeptelecom/audioprofile/AudioProfileState;
    .end local v13           #ringerVolume:I
    .end local v15           #soundEffect:Z
    .end local v16           #state:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v17           #value:Ljava/lang/String;
    .end local v18           #vibration:Z
    .end local v19           #voiceCallUri:Landroid/net/Uri;
    .end local v20           #voiceCallUri2:Landroid/net/Uri;
    :catch_0
    move-exception v5

    .line 1116
    .local v5, e:Landroid/os/RemoteException;
    const-string v21, "AudioProfileManager"

    const-string v22, "Dead object in getProfileState"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1117
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 1121
    .end local v5           #e:Landroid/os/RemoteException;
    .restart local v16       #state:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v17       #value:Ljava/lang/String;
    :cond_1
    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    goto/16 :goto_1

    .line 1123
    .restart local v19       #voiceCallUri:Landroid/net/Uri;
    :cond_2
    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    goto/16 :goto_2

    .line 1125
    .restart local v10       #notificationUri:Landroid/net/Uri;
    :cond_3
    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    goto/16 :goto_3

    .line 1128
    .restart local v20       #voiceCallUri2:Landroid/net/Uri;
    :cond_4
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto/16 :goto_4

    .line 1130
    .restart local v9       #mediaVolume:I
    :cond_5
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v13

    goto/16 :goto_5

    .line 1132
    .restart local v13       #ringerVolume:I
    :cond_6
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v11

    goto/16 :goto_6

    .line 1134
    .restart local v11       #notificationVolume:I
    :cond_7
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto/16 :goto_7

    .line 1147
    .restart local v3       #alarmVolume:I
    .restart local v4       #dtmfTone:Z
    .restart local v7       #hapticFeedback:Z
    .restart local v8       #lockScreensound:Z
    .restart local v15       #soundEffect:Z
    .restart local v18       #vibration:Z
    :cond_8
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto/16 :goto_8
.end method

.method public getRingtoneUri(Ljava/lang/String;I)Landroid/net/Uri;
    .locals 5
    .parameter "profileKey"
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    .line 912
    if-nez p1, :cond_0

    .line 913
    const-string v3, "AudioProfileManager"

    const-string v4, "getRingtoneUri with null profile key!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    :goto_0
    return-object v2

    .line 917
    :cond_0
    const/4 v3, 0x1

    if-eq p2, v3, :cond_1

    const/4 v3, 0x2

    if-eq p2, v3, :cond_1

    const/16 v3, 0x8

    if-ne p2, v3, :cond_2

    .line 918
    :cond_1
    invoke-static {}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getService()Lcom/yeptelecom/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 920
    .local v1, service:Lcom/yeptelecom/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/yeptelecom/common/audioprofile/IAudioProfileService;->getRingtoneUri(Ljava/lang/String;I)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 921
    :catch_0
    move-exception v0

    .line 922
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "AudioProfileManager"

    const-string v4, "Dead object in getRingtoneUri"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 926
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #service:Lcom/yeptelecom/common/audioprofile/IAudioProfileService;
    :cond_2
    const-string v3, "AudioProfileManager"

    const-string v4, "getRingtoneUri with unsupport stream type!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSoundEffectEnabled(Ljava/lang/String;)Z
    .locals 5
    .parameter "profileKey"

    .prologue
    const/4 v2, 0x0

    .line 1018
    if-nez p1, :cond_0

    .line 1019
    const-string v3, "AudioProfileManager"

    const-string v4, "getSoundEffectEnabled with null profile key!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    :goto_0
    return v2

    .line 1023
    :cond_0
    invoke-static {}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getService()Lcom/yeptelecom/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1025
    .local v1, service:Lcom/yeptelecom/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/yeptelecom/common/audioprofile/IAudioProfileService;->getSoundEffectEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1026
    :catch_0
    move-exception v0

    .line 1027
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "AudioProfileManager"

    const-string v4, "Dead object in getSoundEffectEnabled"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getStreamMaxVolume(I)I
    .locals 4
    .parameter "streamType"

    .prologue
    .line 1455
    invoke-static {}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getService()Lcom/yeptelecom/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1457
    .local v1, service:Lcom/yeptelecom/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/yeptelecom/common/audioprofile/IAudioProfileService;->getStreamMaxVolume(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1460
    :goto_0
    return v2

    .line 1458
    :catch_0
    move-exception v0

    .line 1459
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in isRingtoneExist"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1460
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getStreamVolume(Ljava/lang/String;I)I
    .locals 5
    .parameter "profileKey"
    .parameter "streamType"

    .prologue
    const/4 v2, 0x0

    .line 943
    if-nez p1, :cond_0

    .line 944
    const-string v3, "AudioProfileManager"

    const-string v4, "getStreamVolume with null profile key!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    :goto_0
    return v2

    .line 949
    :cond_0
    const/4 v3, 0x2

    if-eq p2, v3, :cond_1

    const/4 v3, 0x5

    if-eq p2, v3, :cond_1

    const/4 v3, 0x4

    if-eq p2, v3, :cond_1

    const/4 v3, 0x3

    if-ne p2, v3, :cond_2

    .line 953
    :cond_1
    invoke-static {}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getService()Lcom/yeptelecom/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 955
    .local v1, service:Lcom/yeptelecom/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/yeptelecom/common/audioprofile/IAudioProfileService;->getStreamVolume(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 956
    :catch_0
    move-exception v0

    .line 957
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "AudioProfileManager"

    const-string v4, "Dead object in getStreamVolume"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 961
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #service:Lcom/yeptelecom/common/audioprofile/IAudioProfileService;
    :cond_2
    const-string v3, "AudioProfileManager"

    const-string v4, "getStreamVolume with unsupport stream type!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getVibrationEnabled(Ljava/lang/String;)Z
    .locals 5
    .parameter "profileKey"

    .prologue
    const/4 v2, 0x0

    .line 974
    if-nez p1, :cond_0

    .line 975
    const-string v3, "AudioProfileManager"

    const-string v4, "getVibrationEnabled with null profile key!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    :goto_0
    return v2

    .line 979
    :cond_0
    invoke-static {}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getService()Lcom/yeptelecom/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 981
    .local v1, service:Lcom/yeptelecom/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/yeptelecom/common/audioprofile/IAudioProfileService;->getVibrationEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 982
    :catch_0
    move-exception v0

    .line 983
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "AudioProfileManager"

    const-string v4, "Dead object in getVibrationEnabled"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isActive(Ljava/lang/String;)Z
    .locals 5
    .parameter "profileKey"

    .prologue
    const/4 v2, 0x0

    .line 1410
    if-nez p1, :cond_0

    .line 1411
    const-string v3, "AudioProfileManager"

    const-string v4, "isActive with null profile key!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    :goto_0
    return v2

    .line 1415
    :cond_0
    invoke-static {}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getService()Lcom/yeptelecom/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1417
    .local v1, service:Lcom/yeptelecom/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/yeptelecom/common/audioprofile/IAudioProfileService;->isActive(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1418
    :catch_0
    move-exception v0

    .line 1419
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "AudioProfileManager"

    const-string v4, "Dead object in isActive"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isNameExist(Ljava/lang/String;)Z
    .locals 5
    .parameter "name"

    .prologue
    const/4 v2, 0x1

    .line 852
    if-eqz p1, :cond_0

    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 853
    :cond_0
    const-string v3, "AudioProfileManager"

    const-string v4, "isNameExist: Null or empty name!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    :goto_0
    return v2

    .line 857
    :cond_1
    invoke-static {}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getService()Lcom/yeptelecom/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 859
    .local v1, service:Lcom/yeptelecom/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/yeptelecom/common/audioprofile/IAudioProfileService;->isNameExist(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 860
    :catch_0
    move-exception v0

    .line 861
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "AudioProfileManager"

    const-string v4, "Dead object in setActiveProfile"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isRingtoneExist(Landroid/net/Uri;)Z
    .locals 5
    .parameter "uri"

    .prologue
    const/4 v2, 0x0

    .line 1431
    if-nez p1, :cond_0

    .line 1432
    const-string v3, "AudioProfileManager"

    const-string v4, "isRingtoneExist with null uri!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    :goto_0
    return v2

    .line 1436
    :cond_0
    invoke-static {}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getService()Lcom/yeptelecom/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1438
    .local v1, service:Lcom/yeptelecom/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/yeptelecom/common/audioprofile/IAudioProfileService;->isRingtoneExist(Landroid/net/Uri;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1439
    :catch_0
    move-exception v0

    .line 1440
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "AudioProfileManager"

    const-string v4, "Dead object in isRingtoneExist"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public listenAudioProfie(Lcom/yeptelecom/common/audioprofile/AudioProfileListener;I)V
    .locals 4
    .parameter "listener"
    .parameter "event"

    .prologue
    .line 1496
    invoke-static {}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getService()Lcom/yeptelecom/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1498
    .local v1, service:Lcom/yeptelecom/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-virtual {p1}, Lcom/yeptelecom/common/audioprofile/AudioProfileListener;->getCallback()Lcom/yeptelecom/common/audioprofile/IAudioProfileListener;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Lcom/yeptelecom/common/audioprofile/IAudioProfileService;->listenAudioProfie(Lcom/yeptelecom/common/audioprofile/IAudioProfileListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1502
    :goto_0
    return-void

    .line 1499
    :catch_0
    move-exception v0

    .line 1500
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in listenAudioProfie"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public reset()V
    .locals 4

    .prologue
    .line 772
    invoke-static {}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getService()Lcom/yeptelecom/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 774
    .local v1, service:Lcom/yeptelecom/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1}, Lcom/yeptelecom/common/audioprofile/IAudioProfileService;->reset()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 778
    :goto_0
    return-void

    .line 775
    :catch_0
    move-exception v0

    .line 776
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in reset"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setActiveProfile(Ljava/lang/String;)V
    .locals 5
    .parameter "profileKey"

    .prologue
    .line 718
    if-nez p1, :cond_0

    .line 719
    const-string v2, "AudioProfileManager"

    const-string/jumbo v3, "setActiveProfile with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    :goto_0
    return-void

    .line 723
    :cond_0
    const-string v2, "AudioProfileManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setActiveProfile: profileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    invoke-static {}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getService()Lcom/yeptelecom/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 726
    .local v1, service:Lcom/yeptelecom/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/yeptelecom/common/audioprofile/IAudioProfileService;->setActiveProfile(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 727
    :catch_0
    move-exception v0

    .line 728
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in setActiveProfile"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setDtmfToneEnabled(Ljava/lang/String;Z)V
    .locals 4
    .parameter "profileKey"
    .parameter "enabled"

    .prologue
    .line 1281
    if-nez p1, :cond_0

    .line 1282
    const-string v2, "AudioProfileManager"

    const-string/jumbo v3, "setDtmfToneEnabled with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    :goto_0
    return-void

    .line 1286
    :cond_0
    invoke-static {}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getService()Lcom/yeptelecom/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1288
    .local v1, service:Lcom/yeptelecom/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/yeptelecom/common/audioprofile/IAudioProfileService;->setDtmfToneEnabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1289
    :catch_0
    move-exception v0

    .line 1290
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in setDtmfToneEnabled"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setEmergencyToneValue(Ljava/lang/String;I)V
    .locals 4
    .parameter "profileKey"
    .parameter "value"

    .prologue
    .line 1365
    if-nez p1, :cond_0

    .line 1366
    const-string v2, "AudioProfileManager"

    const-string/jumbo v3, "setEmergencyToneEnabled with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    :goto_0
    return-void

    .line 1370
    :cond_0
    invoke-static {}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getService()Lcom/yeptelecom/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1372
    .local v1, service:Lcom/yeptelecom/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/yeptelecom/common/audioprofile/IAudioProfileService;->setEmergencyToneValue(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1373
    :catch_0
    move-exception v0

    .line 1374
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in setEmergencyToneEnabled"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setHapticFeedbackEnabled(Ljava/lang/String;Z)V
    .locals 4
    .parameter "profileKey"
    .parameter "enabled"

    .prologue
    .line 1344
    if-nez p1, :cond_0

    .line 1345
    const-string v2, "AudioProfileManager"

    const-string/jumbo v3, "setHapticFeedbackEnabled with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    :goto_0
    return-void

    .line 1349
    :cond_0
    invoke-static {}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getService()Lcom/yeptelecom/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1351
    .local v1, service:Lcom/yeptelecom/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/yeptelecom/common/audioprofile/IAudioProfileService;->setHapticFeedbackEnabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1352
    :catch_0
    move-exception v0

    .line 1353
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in setHapticFeedbackEnabled"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setLockScreenEnabled(Ljava/lang/String;Z)V
    .locals 4
    .parameter "profileKey"
    .parameter "enabled"

    .prologue
    .line 1323
    if-nez p1, :cond_0

    .line 1324
    const-string v2, "AudioProfileManager"

    const-string/jumbo v3, "setLockScreenEnabled with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    :goto_0
    return-void

    .line 1328
    :cond_0
    invoke-static {}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getService()Lcom/yeptelecom/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1330
    .local v1, service:Lcom/yeptelecom/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/yeptelecom/common/audioprofile/IAudioProfileService;->setLockScreenEnabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1331
    :catch_0
    move-exception v0

    .line 1332
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in setLockScreenEnabled"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setProfileName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "profileKey"
    .parameter "newName"

    .prologue
    .line 1386
    if-nez p1, :cond_0

    .line 1387
    const-string v2, "AudioProfileManager"

    const-string/jumbo v3, "setProfileName with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    :goto_0
    return-void

    .line 1391
    :cond_0
    invoke-static {}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getService()Lcom/yeptelecom/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1393
    .local v1, service:Lcom/yeptelecom/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/yeptelecom/common/audioprofile/IAudioProfileService;->setProfileName(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1394
    :catch_0
    move-exception v0

    .line 1395
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in setProfileName"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setRingtoneUri(Ljava/lang/String;ILandroid/net/Uri;)V
    .locals 4
    .parameter "profileKey"
    .parameter "type"
    .parameter "ringtoneUri"

    .prologue
    .line 1201
    if-nez p1, :cond_0

    .line 1202
    const-string v2, "AudioProfileManager"

    const-string/jumbo v3, "setStreamVolume with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    :goto_0
    return-void

    .line 1206
    :cond_0
    const/4 v2, 0x1

    if-eq p2, v2, :cond_1

    const/4 v2, 0x2

    if-eq p2, v2, :cond_1

    const/16 v2, 0x8

    if-eq p2, v2, :cond_1

    .line 1207
    const-string v2, "AudioProfileManager"

    const-string/jumbo v3, "setStreamVolume with unsupport stream type!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1211
    :cond_1
    invoke-static {}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getService()Lcom/yeptelecom/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1213
    .local v1, service:Lcom/yeptelecom/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Lcom/yeptelecom/common/audioprofile/IAudioProfileService;->setRingtoneUri(Ljava/lang/String;ILandroid/net/Uri;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1214
    :catch_0
    move-exception v0

    .line 1215
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in setRingtoneUri"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setSoundEffectEnabled(Ljava/lang/String;Z)V
    .locals 4
    .parameter "profileKey"
    .parameter "enabled"

    .prologue
    .line 1302
    if-nez p1, :cond_0

    .line 1303
    const-string v2, "AudioProfileManager"

    const-string/jumbo v3, "setSoundEffectEnabled with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    :goto_0
    return-void

    .line 1307
    :cond_0
    invoke-static {}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getService()Lcom/yeptelecom/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1309
    .local v1, service:Lcom/yeptelecom/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/yeptelecom/common/audioprofile/IAudioProfileService;->setSoundEffectEnabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1310
    :catch_0
    move-exception v0

    .line 1311
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in setSoundEffectEnabled"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setStreamVolume(Ljava/lang/String;II)V
    .locals 4
    .parameter "profileKey"
    .parameter "streamType"
    .parameter "index"

    .prologue
    .line 1231
    if-nez p1, :cond_0

    .line 1232
    const-string v2, "AudioProfileManager"

    const-string/jumbo v3, "setStreamVolume with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    :goto_0
    return-void

    .line 1236
    :cond_0
    const/4 v2, 0x3

    if-eq p2, v2, :cond_1

    const/4 v2, 0x2

    if-eq p2, v2, :cond_1

    const/4 v2, 0x5

    if-eq p2, v2, :cond_1

    const/4 v2, 0x4

    if-eq p2, v2, :cond_1

    .line 1240
    const-string v2, "AudioProfileManager"

    const-string/jumbo v3, "setStreamVolume with unsupport stream type!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1244
    :cond_1
    invoke-static {}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getService()Lcom/yeptelecom/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1246
    .local v1, service:Lcom/yeptelecom/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Lcom/yeptelecom/common/audioprofile/IAudioProfileService;->setStreamVolume(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1247
    :catch_0
    move-exception v0

    .line 1248
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in setStreamVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setVibrationEnabled(Ljava/lang/String;Z)V
    .locals 4
    .parameter "profileKey"
    .parameter "enabled"

    .prologue
    .line 1260
    if-nez p1, :cond_0

    .line 1261
    const-string v2, "AudioProfileManager"

    const-string/jumbo v3, "setVibrationEnabled with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    :goto_0
    return-void

    .line 1265
    :cond_0
    invoke-static {}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getService()Lcom/yeptelecom/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1267
    .local v1, service:Lcom/yeptelecom/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/yeptelecom/common/audioprofile/IAudioProfileService;->setVibrationEnabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1268
    :catch_0
    move-exception v0

    .line 1269
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in setVibrationEnabled"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
