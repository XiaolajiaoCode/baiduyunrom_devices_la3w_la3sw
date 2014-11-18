.class public Lcom/yeptelecom/audioprofile/AudioProfileService;
.super Lcom/yeptelecom/common/audioprofile/IAudioProfileService$Stub;
.source "AudioProfileService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yeptelecom/audioprofile/AudioProfileService$8;,
        Lcom/yeptelecom/audioprofile/AudioProfileService$AudioProfileHandler;,
        Lcom/yeptelecom/audioprofile/AudioProfileService$OverrideSystemThread;,
        Lcom/yeptelecom/audioprofile/AudioProfileService$Record;
    }
.end annotation


# static fields
.field private static final DELAY_TIME_AVOID_CTS_FAIL:J = 0x4e20L

.field private static final IS_SUPPORT_OUTDOOR_EDITABLE:Z = false

.field private static final MSG_DELAY_SET_VIBRATE_AVOID_CTS_FAIL:I = 0x14

.field private static final MSG_PERSIST_ALARM_VOLUME_TO_DATABASE:I = 0xa

.field private static final MSG_PERSIST_DTMF_TONE_TO_DATABASE:I = 0xf

.field private static final MSG_PERSIST_DTMF_TONE_TO_SYSTEM:I = 0x4

.field private static final MSG_PERSIST_EMERGENCY_TONE_TO_DATABASE:I = 0x1d

.field private static final MSG_PERSIST_EMERGENCY_TONE_TO_SYSTEM:I = 0x1e

.field private static final MSG_PERSIST_HAPTIC_FEEDBACK_TO_DATABASE:I = 0x12

.field private static final MSG_PERSIST_HAPTIC_FEEDBACK_TO_SYSTEM:I = 0x7

.field private static final MSG_PERSIST_LOCKSCREEN_SOUND_TO_DATABASE:I = 0x11

.field private static final MSG_PERSIST_LOCKSCREEN_SOUND_TO_SYSTEM:I = 0x6

.field private static final MSG_PERSIST_MEDIA_VOLUME_TO_DATABASE:I = 0x1a

.field private static final MSG_PERSIST_NOTIFICATION_RINGTONE_TO_DATABASE:I = 0xc

.field private static final MSG_PERSIST_NOTIFICATION_RINGTONE_TO_SYSTEM:I = 0x2

.field private static final MSG_PERSIST_NOTIFICATION_VOLUME_TO_DATABASE:I = 0x9

.field private static final MSG_PERSIST_PROFILE_NAME_TO_DATABASE:I = 0x13

.field private static final MSG_PERSIST_RINGER_VOLUME_TO_DATABASE:I = 0x8

.field private static final MSG_PERSIST_SOUND_EFFECT_TO_DATABASE:I = 0x10

.field private static final MSG_PERSIST_SOUND_EFFECT_TO_SYSTEM:I = 0x5

.field private static final MSG_PERSIST_VALUES_TO_SYSTEM_BY_BATCH:I = 0x14

.field private static final MSG_PERSIST_VIBRATE_TO_SYSTEM:I = 0x19

.field private static final MSG_PERSIST_VIBRATION_TO_DATABASE:I = 0xe

.field private static final MSG_PERSIST_VOICECALL_RINGTONE_TO_DATABASE:I = 0xb

.field private static final MSG_PERSIST_VOICECALL_RINGTONE_TO_DATABASE_2:I = 0xd

.field private static final MSG_PERSIST_VOICECALL_RINGTONE_TO_SYSTEM:I = 0x1

.field private static final MSG_PERSIST_VOICECALL_RINGTONE_TO_SYSTEM_2:I = 0x3

.field private static SILENT_BOOT_KEY:Ljava/lang/String; = null

.field public static final SILENT_NOTIFICATION_URI:Landroid/net/Uri; = null

.field private static final TAG:Ljava/lang/String; = "AudioProfileService"


# instance fields
.field private mActiveProfileKey:Ljava/lang/String;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mAudioProfileHandler:Landroid/os/Handler;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCustomProfileName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultRingtone:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mDelaySetVibrate:Z

.field private mExt:Lcom/yeptelecom/common/audioprofile/IAudioProfileExtension;

.field private mIsLastCustomActiveProfileDeleted:Z

.field private mKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLastActiveProfileKey:Ljava/lang/String;

.field private final mMediaVolumeListenr:Lcom/yeptelecom/common/audioprofile/AudioProfileListener;

.field private final mNotificationObserver:Landroid/database/ContentObserver;

.field private final mPredefinedKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mProfileStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/yeptelecom/audioprofile/AudioProfileState;",
            ">;"
        }
    .end annotation
.end field

.field private mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yeptelecom/audioprofile/AudioProfileService$Record;",
            ">;"
        }
    .end annotation
.end field

.field private mRingerMode:I

.field private final mRingerModeListener:Lcom/yeptelecom/common/audioprofile/AudioProfileListener;

.field private final mRingerVolumeListenr:Lcom/yeptelecom/common/audioprofile/AudioProfileListener;

.field private final mRingtone2Observer:Landroid/database/ContentObserver;

.field private final mRingtoneObserver:Landroid/database/ContentObserver;

.field private mShouldSyncToSystem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mUpgradeReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 112
    const-string v0, "com.yeptelecom.uri.silent_notificaton"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/yeptelecom/audioprofile/AudioProfileService;->SILENT_NOTIFICATION_URI:Landroid/net/Uri;

    .line 130
    const-string/jumbo v0, "persist.sys.silent"

    sput-object v0, Lcom/yeptelecom/audioprofile/AudioProfileService;->SILENT_BOOT_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v8, 0x0

    .line 615
    invoke-direct {p0}, Lcom/yeptelecom/common/audioprofile/IAudioProfileService$Stub;-><init>()V

    .line 121
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    .line 122
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    .line 124
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    .line 126
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    .line 128
    iput-boolean v8, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mDelaySetVibrate:Z

    .line 136
    new-instance v5, Ljava/util/HashMap;

    const/16 v6, 0xa

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(I)V

    iput-object v5, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    .line 142
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mCustomProfileName:Ljava/util/HashMap;

    .line 148
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mIsLastCustomActiveProfileDeleted:Z

    .line 150
    const/4 v5, -0x1

    iput v5, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mRingerMode:I

    .line 157
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    .line 164
    new-instance v5, Lcom/yeptelecom/audioprofile/AudioProfileService$1;

    invoke-direct {v5, p0}, Lcom/yeptelecom/audioprofile/AudioProfileService$1;-><init>(Lcom/yeptelecom/audioprofile/AudioProfileService;)V

    iput-object v5, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mRingerModeListener:Lcom/yeptelecom/common/audioprofile/AudioProfileListener;

    .line 243
    new-instance v5, Lcom/yeptelecom/audioprofile/AudioProfileService$2;

    invoke-direct {v5, p0}, Lcom/yeptelecom/audioprofile/AudioProfileService$2;-><init>(Lcom/yeptelecom/audioprofile/AudioProfileService;)V

    iput-object v5, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mRingerVolumeListenr:Lcom/yeptelecom/common/audioprofile/AudioProfileListener;

    .line 306
    new-instance v5, Lcom/yeptelecom/audioprofile/AudioProfileService$3;

    invoke-direct {v5, p0}, Lcom/yeptelecom/audioprofile/AudioProfileService$3;-><init>(Lcom/yeptelecom/audioprofile/AudioProfileService;)V

    iput-object v5, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mMediaVolumeListenr:Lcom/yeptelecom/common/audioprofile/AudioProfileListener;

    .line 368
    new-instance v5, Lcom/yeptelecom/audioprofile/AudioProfileService$4;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v5, p0, v6}, Lcom/yeptelecom/audioprofile/AudioProfileService$4;-><init>(Lcom/yeptelecom/audioprofile/AudioProfileService;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mRingtoneObserver:Landroid/database/ContentObserver;

    .line 435
    new-instance v5, Lcom/yeptelecom/audioprofile/AudioProfileService$5;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v5, p0, v6}, Lcom/yeptelecom/audioprofile/AudioProfileService$5;-><init>(Lcom/yeptelecom/audioprofile/AudioProfileService;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mRingtone2Observer:Landroid/database/ContentObserver;

    .line 502
    new-instance v5, Lcom/yeptelecom/audioprofile/AudioProfileService$6;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v5, p0, v6}, Lcom/yeptelecom/audioprofile/AudioProfileService$6;-><init>(Lcom/yeptelecom/audioprofile/AudioProfileService;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mNotificationObserver:Landroid/database/ContentObserver;

    .line 573
    new-instance v5, Lcom/yeptelecom/audioprofile/AudioProfileService$7;

    invoke-direct {v5, p0}, Lcom/yeptelecom/audioprofile/AudioProfileService$7;-><init>(Lcom/yeptelecom/audioprofile/AudioProfileService;)V

    iput-object v5, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mUpgradeReceiver:Landroid/content/BroadcastReceiver;

    .line 616
    const-string v5, "AudioProfileService"

    const-string v6, "Initial AudioProfileService!"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    iput-object p1, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    .line 618
    iget-object v5, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iput-object v5, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    .line 619
    iget-object v5, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    iput-object v5, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    .line 622
    invoke-direct {p0}, Lcom/yeptelecom/audioprofile/AudioProfileService;->readDefaultRingtones()V

    .line 625
    invoke-direct {p0}, Lcom/yeptelecom/audioprofile/AudioProfileService;->readPredefinedProfileKeys()V

    .line 626
    invoke-direct {p0}, Lcom/yeptelecom/audioprofile/AudioProfileService;->readAllProfileKeys()V

    .line 630
    iget-object v5, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v6, "yep_audioprofile_active"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 632
    .local v0, activeProfileKey:Ljava/lang/String;
    if-nez v0, :cond_0

    iget-object v5, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v6, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v6}, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    :goto_0
    iput-object v5, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    .line 634
    iget-object v5, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v6, "yep_audioprofile_last_active"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 636
    .local v3, lastActiveProfileKey:Ljava/lang/String;
    if-nez v3, :cond_1

    iget-object v5, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v6, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v6}, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    :goto_1
    iput-object v5, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;

    .line 638
    iget-object v5, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v6, "yep_audioprofile_custom_deleted"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mIsLastCustomActiveProfileDeleted:Z

    .line 641
    invoke-direct {p0}, Lcom/yeptelecom/audioprofile/AudioProfileService;->createOverrideSystemThread()V

    .line 644
    iget-object v5, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 645
    .local v4, profileKey:Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/yeptelecom/audioprofile/AudioProfileService;->readPersistedSettings(Ljava/lang/String;)V

    goto :goto_2

    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #lastActiveProfileKey:Ljava/lang/String;
    .end local v4           #profileKey:Ljava/lang/String;
    :cond_0
    move-object v5, v0

    .line 632
    goto :goto_0

    .restart local v3       #lastActiveProfileKey:Ljava/lang/String;
    :cond_1
    move-object v5, v3

    .line 636
    goto :goto_1

    .line 649
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_2
    iget-object v5, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v5

    iput v5, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mRingerMode:I

    .line 650
    iget-object v5, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v6, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mRingerModeListener:Lcom/yeptelecom/common/audioprofile/AudioProfileListener;

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Landroid/media/AudioManager;->listenRingerModeAndVolume(Lcom/yeptelecom/common/audioprofile/AudioProfileListener;I)V

    .line 652
    iget-object v5, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v6, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mRingerVolumeListenr:Lcom/yeptelecom/common/audioprofile/AudioProfileListener;

    const/4 v7, 0x4

    invoke-virtual {v5, v6, v7}, Landroid/media/AudioManager;->listenRingerModeAndVolume(Lcom/yeptelecom/common/audioprofile/AudioProfileListener;I)V

    .line 656
    iget-object v5, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v6, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mMediaVolumeListenr:Lcom/yeptelecom/common/audioprofile/AudioProfileListener;

    const/16 v7, 0x8

    invoke-virtual {v5, v6, v7}, Landroid/media/AudioManager;->listenRingerModeAndVolume(Lcom/yeptelecom/common/audioprofile/AudioProfileListener;I)V

    .line 660
    iget-object v5, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v6, "ringtone"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mRingtoneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v6, v8, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 662
    iget-object v5, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v6, "notification_sound"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mNotificationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v6, v8, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 664
    iget-object v5, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v6, "ringtone_2"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mRingtone2Observer:Landroid/database/ContentObserver;

    invoke-virtual {v5, v6, v8, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 668
    invoke-direct {p0}, Lcom/yeptelecom/audioprofile/AudioProfileService;->readShouldSyncToSystem()V

    .line 673
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 674
    .local v1, filter:Landroid/content/IntentFilter;
    iget-object v5, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_3

    .line 675
    const-string v5, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 676
    const-string v5, "file"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 677
    iget-object v5, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mUpgradeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 689
    :cond_3
    const-class v5, Lcom/yeptelecom/common/audioprofile/IAudioProfileExtension;

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/yeptelecom/common/YepClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yeptelecom/common/audioprofile/IAudioProfileExtension;

    iput-object v5, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mExt:Lcom/yeptelecom/common/audioprofile/IAudioProfileExtension;

    .line 691
    iget-object v5, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mExt:Lcom/yeptelecom/common/audioprofile/IAudioProfileExtension;

    iget-object v6, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    invoke-interface {v5, p0, v6}, Lcom/yeptelecom/common/audioprofile/IAudioProfileExtension;->init(Lcom/yeptelecom/common/audioprofile/IAudioProfileService;Landroid/content/Context;)V

    .line 693
    iget-object v5, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mExt:Lcom/yeptelecom/common/audioprofile/IAudioProfileExtension;

    invoke-interface {v5}, Lcom/yeptelecom/common/audioprofile/IAudioProfileExtension;->shouldCheckDefaultProfiles()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 695
    invoke-direct {p0}, Lcom/yeptelecom/audioprofile/AudioProfileService;->checkDefaultProfiles()V

    .line 697
    :cond_4
    return-void
.end method

.method static synthetic access$000(Lcom/yeptelecom/audioprofile/AudioProfileService;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/yeptelecom/audioprofile/AudioProfileService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mRingerMode:I

    return v0
.end method

.method static synthetic access$1000(Lcom/yeptelecom/audioprofile/AudioProfileService;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$102(Lcom/yeptelecom/audioprofile/AudioProfileService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput p1, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mRingerMode:I

    return p1
.end method

.method static synthetic access$1100(Lcom/yeptelecom/audioprofile/AudioProfileService;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/yeptelecom/audioprofile/AudioProfileService;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mUpgradeReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/yeptelecom/audioprofile/AudioProfileService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/yeptelecom/audioprofile/AudioProfileService;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/yeptelecom/audioprofile/AudioProfileService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mDelaySetVibrate:Z

    return p1
.end method

.method static synthetic access$200(Lcom/yeptelecom/audioprofile/AudioProfileService;)Lcom/yeptelecom/common/audioprofile/IAudioProfileExtension;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mExt:Lcom/yeptelecom/common/audioprofile/IAudioProfileExtension;

    return-object v0
.end method

.method static synthetic access$300(Lcom/yeptelecom/audioprofile/AudioProfileService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/yeptelecom/audioprofile/AudioProfileService;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/yeptelecom/audioprofile/AudioProfileService;->SILENT_BOOT_KEY:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/yeptelecom/audioprofile/AudioProfileService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700(Lcom/yeptelecom/audioprofile/AudioProfileService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/yeptelecom/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$900(Lcom/yeptelecom/audioprofile/AudioProfileService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/yeptelecom/audioprofile/AudioProfileService;->readDefaultRingtones()V

    return-void
.end method

.method private checkDefaultProfiles()V
    .locals 6

    .prologue
    .line 3037
    const-string v4, "AudioProfileService"

    const-string v5, "checkDefaultProfiles>>>"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3039
    iget-object v4, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v5, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v5}, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/yeptelecom/audioprofile/AudioProfileService;->restoreToDefaultValues(Ljava/lang/String;)V

    .line 3040
    iget-object v4, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v5, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->MEETING:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v5}, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/yeptelecom/audioprofile/AudioProfileService;->restoreToDefaultValues(Ljava/lang/String;)V

    .line 3045
    iget-object v4, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v5, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->OUTDOOR:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v5}, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/yeptelecom/audioprofile/AudioProfileService;->restoreToDefaultValues(Ljava/lang/String;)V

    .line 3046
    iget-object v4, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v5, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v5}, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/yeptelecom/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/yeptelecom/audioprofile/AudioProfileState;

    move-result-object v0

    .line 3048
    .local v0, generalState:Lcom/yeptelecom/audioprofile/AudioProfileState;
    iget-object v4, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v5, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->OUTDOOR:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v5}, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/yeptelecom/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/yeptelecom/audioprofile/AudioProfileState;

    move-result-object v2

    .line 3051
    .local v2, outdoorState:Lcom/yeptelecom/audioprofile/AudioProfileState;
    iget-object v4, v0, Lcom/yeptelecom/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    iput-object v4, v2, Lcom/yeptelecom/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    .line 3052
    iget-object v4, v0, Lcom/yeptelecom/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    iput-object v4, v2, Lcom/yeptelecom/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    .line 3053
    iget-object v4, v0, Lcom/yeptelecom/audioprofile/AudioProfileState;->mRingerStream2:Landroid/net/Uri;

    iput-object v4, v2, Lcom/yeptelecom/audioprofile/AudioProfileState;->mRingerStream2:Landroid/net/Uri;

    .line 3057
    iget-object v4, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3058
    .local v3, profileKey:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/yeptelecom/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/yeptelecom/audioprofile/AudioProfileState;

    move-result-object v4

    invoke-virtual {p0, v3}, Lcom/yeptelecom/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/yeptelecom/audioprofile/AudioProfileState;

    move-result-object v5

    iget v5, v5, Lcom/yeptelecom/audioprofile/AudioProfileState;->mRingerVolume:I

    iput v5, v4, Lcom/yeptelecom/audioprofile/AudioProfileState;->mNotificationVolume:I

    goto :goto_0

    .line 3061
    .end local v3           #profileKey:Ljava/lang/String;
    :cond_0
    const-string v4, "AudioProfileService"

    const-string v5, "checkDefaultProfiles<<<"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3062
    return-void
.end method

.method private createOverrideSystemThread()V
    .locals 4

    .prologue
    .line 3273
    new-instance v1, Lcom/yeptelecom/audioprofile/AudioProfileService$OverrideSystemThread;

    invoke-direct {v1, p0}, Lcom/yeptelecom/audioprofile/AudioProfileService$OverrideSystemThread;-><init>(Lcom/yeptelecom/audioprofile/AudioProfileService;)V

    .line 3274
    .local v1, overrideSystemThread:Lcom/yeptelecom/audioprofile/AudioProfileService$OverrideSystemThread;
    invoke-virtual {v1}, Lcom/yeptelecom/audioprofile/AudioProfileService$OverrideSystemThread;->start()V

    .line 3276
    monitor-enter p0

    .line 3277
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 3280
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3281
    :catch_0
    move-exception v0

    .line 3282
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    const-string v2, "AudioProfileService"

    const-string v3, "Interrupted while waiting on AudioProfileHandler."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3285
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :cond_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3287
    return-void
.end method

.method private doRingtoneUriSetting(Ljava/lang/String;ILandroid/net/Uri;)V
    .locals 3
    .parameter "profileKey"
    .parameter "type"
    .parameter "uri"

    .prologue
    .line 1929
    invoke-virtual {p0, p1, p2, p3}, Lcom/yeptelecom/audioprofile/AudioProfileService;->persistRingtoneUriToDatabase(Ljava/lang/String;ILandroid/net/Uri;)V

    .line 1932
    invoke-virtual {p0, p1}, Lcom/yeptelecom/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/yeptelecom/audioprofile/AudioProfileState;

    move-result-object v0

    .line 1933
    .local v0, state:Lcom/yeptelecom/audioprofile/AudioProfileState;
    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    monitor-enter v2

    .line 1934
    :try_start_0
    invoke-direct {p0, v0, p2, p3}, Lcom/yeptelecom/audioprofile/AudioProfileService;->setRingtoneUriInStateMap(Lcom/yeptelecom/audioprofile/AudioProfileState;ILandroid/net/Uri;)V

    .line 1935
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1938
    invoke-virtual {p0, p1}, Lcom/yeptelecom/audioprofile/AudioProfileService;->isActive(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1939
    invoke-direct {p0, p2}, Lcom/yeptelecom/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    .line 1941
    :cond_0
    return-void

    .line 1935
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private genCustomKey()Ljava/lang/String;
    .locals 7

    .prologue
    .line 1232
    const/4 v2, 0x6

    .line 1234
    .local v2, maxCustom:I
    new-instance v3, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Random;-><init>(J)V

    .line 1235
    .local v3, rand:Ljava/util/Random;
    const/4 v1, 0x0

    .line 1237
    .local v1, key:Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v4

    rem-int v0, v4, v2

    .line 1238
    .local v0, customNo:I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1239
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "yep_audioprofile_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v5}, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1242
    iget-object v4, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1243
    const-string v4, "AudioProfileService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "genCustomKey: newKey = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    return-object v1
.end method

.method private getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;I)I
    .locals 2
    .parameter "name"
    .parameter
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 3135
    .local p2, initValues:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 3136
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3137
    .local v0, value:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 3139
    .end local v0           #value:Ljava/lang/String;
    .end local p3
    :cond_0
    :goto_0
    return p3

    .line 3137
    .restart local v0       #value:Ljava/lang/String;
    .restart local p3
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p3

    goto :goto_0
.end method

.method private getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .parameter "name"
    .parameter
    .parameter "defaultUri"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/net/Uri;",
            ")",
            "Landroid/net/Uri;"
        }
    .end annotation

    .prologue
    .line 3118
    .local p2, initValues:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 3119
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3120
    .local v0, uriString:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 3122
    .end local v0           #uriString:Ljava/lang/String;
    .end local p3
    :cond_0
    :goto_0
    return-object p3

    .line 3120
    .restart local v0       #uriString:Ljava/lang/String;
    .restart local p3
    :cond_1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    goto :goto_0
.end method

.method private getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;Z)Z
    .locals 2
    .parameter "name"
    .parameter
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 3152
    .local p2, initValues:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 3153
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3154
    .local v0, value:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 3156
    .end local v0           #value:Ljava/lang/String;
    .end local p3
    :cond_0
    :goto_0
    return p3

    .line 3154
    .restart local v0       #value:Ljava/lang/String;
    .restart local p3
    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    goto :goto_0
.end method

.method private getStreamValidVolume(II)I
    .locals 2
    .parameter "streamType"
    .parameter "volume"

    .prologue
    .line 1593
    invoke-virtual {p0, p1}, Lcom/yeptelecom/audioprofile/AudioProfileService;->getStreamMaxVolume(I)I

    move-result v0

    .line 1594
    .local v0, max:I
    move v1, p2

    .line 1595
    .local v1, validVolume:I
    if-gez p2, :cond_1

    .line 1596
    const/4 v1, 0x0

    .line 1600
    :cond_0
    :goto_0
    return v1

    .line 1597
    :cond_1
    if-le p2, v0, :cond_0

    .line 1598
    move v1, v0

    goto :goto_0
.end method

.method private isNotEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "obj1"
    .parameter "obj2"

    .prologue
    .line 1963
    if-nez p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRingtoneUriChanged(Lcom/yeptelecom/audioprofile/AudioProfileState;ILandroid/net/Uri;)Z
    .locals 1
    .parameter "profileState"
    .parameter "type"
    .parameter "newRingtoneUri"

    .prologue
    .line 1880
    sparse-switch p2, :sswitch_data_0

    .line 1891
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 1882
    :sswitch_0
    iget-object v0, p1, Lcom/yeptelecom/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    invoke-direct {p0, v0, p3}, Lcom/yeptelecom/audioprofile/AudioProfileService;->isNotEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 1885
    :sswitch_1
    iget-object v0, p1, Lcom/yeptelecom/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    invoke-direct {p0, v0, p3}, Lcom/yeptelecom/audioprofile/AudioProfileService;->isNotEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 1888
    :sswitch_2
    iget-object v0, p1, Lcom/yeptelecom/audioprofile/AudioProfileState;->mRingerStream2:Landroid/net/Uri;

    invoke-direct {p0, v0, p3}, Lcom/yeptelecom/audioprofile/AudioProfileService;->isNotEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 1880
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

.method private isValidRingtoneType(I)Z
    .locals 2
    .parameter "type"

    .prologue
    const/4 v0, 0x1

    .line 1872
    if-eq v0, p1, :cond_0

    const/4 v1, 0x2

    if-eq v1, p1, :cond_0

    const/16 v1, 0x8

    if-ne v1, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyAudioProfileChanged()V
    .locals 7

    .prologue
    .line 960
    iget-object v3, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 961
    const-string v3, "AudioProfileService"

    const-string/jumbo v4, "notifyAudioProfileChanged falled, because active profile key is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    :goto_0
    return-void

    .line 964
    :cond_0
    iget-object v3, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 965
    const-string v3, "AudioProfileService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifyAudioProfileChanged: New profile = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", clients = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    iget-object v4, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 968
    :try_start_0
    iget-object v3, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 969
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/yeptelecom/audioprofile/AudioProfileService$Record;>;"
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 970
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yeptelecom/audioprofile/AudioProfileService$Record;

    .line 971
    .local v2, record:Lcom/yeptelecom/audioprofile/AudioProfileService$Record;
    iget v3, v2, Lcom/yeptelecom/audioprofile/AudioProfileService$Record;->mEvent:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_1

    .line 973
    :try_start_1
    iget-object v3, v2, Lcom/yeptelecom/audioprofile/AudioProfileService$Record;->mCallback:Lcom/yeptelecom/common/audioprofile/IAudioProfileListener;

    iget-object v5, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-interface {v3, v5}, Lcom/yeptelecom/common/audioprofile/IAudioProfileListener;->onAudioProfileChanged(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 974
    :catch_0
    move-exception v0

    .line 975
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 976
    const-string v3, "AudioProfileService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dead object in notifyAudioProfileChanged, remove listener\'s callback: record.mBinder = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/yeptelecom/audioprofile/AudioProfileService$Record;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", clients = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", exception = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 983
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/yeptelecom/audioprofile/AudioProfileService$Record;>;"
    .end local v2           #record:Lcom/yeptelecom/audioprofile/AudioProfileService$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .restart local v1       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/yeptelecom/audioprofile/AudioProfileService$Record;>;"
    :cond_2
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 985
    .end local v1           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/yeptelecom/audioprofile/AudioProfileService$Record;>;"
    :cond_3
    const-string v3, "AudioProfileService"

    const-string/jumbo v4, "notifyAudioProfileChanged falled, because there are no listener!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private persistDtmfToneToDatabase(Ljava/lang/String;Z)V
    .locals 7
    .parameter "profileKey"
    .parameter "enabled"

    .prologue
    const/4 v6, -0x1

    .line 2384
    const/4 v0, 0x1

    .line 2385
    .local v0, BUNDLE_SIZE:I
    new-instance v1, Landroid/os/Bundle;

    const/4 v4, 0x1

    invoke-direct {v1, v4}, Landroid/os/Bundle;-><init>(I)V

    .line 2386
    .local v1, bundle:Landroid/os/Bundle;
    invoke-static {p1}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getDtmfToneKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2387
    .local v3, name:Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2388
    iget-object v4, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v5, 0xf

    invoke-virtual {v4, v5, v6, v6, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 2390
    .local v2, msg:Landroid/os/Message;
    invoke-virtual {v2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2391
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 2392
    return-void
.end method

.method private persistDtmfToneToSystem()V
    .locals 6

    .prologue
    .line 2617
    const-string v2, "dtmf_tone"

    .line 2618
    .local v2, name:Ljava/lang/String;
    iget-object v3, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/yeptelecom/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/yeptelecom/audioprofile/AudioProfileState;

    move-result-object v3

    iget-boolean v3, v3, Lcom/yeptelecom/audioprofile/AudioProfileState;->mDtmfToneEnabled:Z

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 2619
    .local v0, enabled:I
    :goto_0
    iget-object v3, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v0, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2621
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2622
    return-void

    .line 2618
    .end local v0           #enabled:I
    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private persistEmergencyToneToDatabase(Ljava/lang/String;I)V
    .locals 5
    .parameter "profileKey"
    .parameter "value"

    .prologue
    .line 2452
    invoke-static {p1}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getEmergencyToneKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2453
    .local v1, name:Ljava/lang/String;
    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v3, 0x1d

    const/4 v4, -0x1

    invoke-virtual {v2, v3, p2, v4, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2455
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2456
    return-void
.end method

.method private persistEmergencyToneToSystem()V
    .locals 6

    .prologue
    .line 2661
    const-string v1, "emergency_tone"

    .line 2662
    .local v1, name:Ljava/lang/String;
    iget-object v3, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/yeptelecom/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/yeptelecom/audioprofile/AudioProfileState;

    move-result-object v3

    iget v2, v3, Lcom/yeptelecom/audioprofile/AudioProfileState;->mEmergencyToneValue:I

    .line 2663
    .local v2, value:I
    iget-object v3, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v4, 0x1e

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v2, v5, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2665
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2666
    return-void
.end method

.method private persistHapticFeedbackToDatabase(Ljava/lang/String;Z)V
    .locals 7
    .parameter "profileKey"
    .parameter "enabled"

    .prologue
    const/4 v6, -0x1

    .line 2435
    const/4 v0, 0x1

    .line 2436
    .local v0, BUNDLE_SIZE:I
    new-instance v1, Landroid/os/Bundle;

    const/4 v4, 0x1

    invoke-direct {v1, v4}, Landroid/os/Bundle;-><init>(I)V

    .line 2437
    .local v1, bundle:Landroid/os/Bundle;
    invoke-static {p1}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getHapticKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2438
    .local v3, name:Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2439
    iget-object v4, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v5, 0x12

    invoke-virtual {v4, v5, v6, v6, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 2441
    .local v2, msg:Landroid/os/Message;
    invoke-virtual {v2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2442
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 2443
    return-void
.end method

.method private persistHapticFeedbackToSystem()V
    .locals 6

    .prologue
    .line 2650
    const-string v2, "haptic_feedback_enabled"

    .line 2651
    .local v2, name:Ljava/lang/String;
    iget-object v3, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/yeptelecom/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/yeptelecom/audioprofile/AudioProfileState;

    move-result-object v3

    iget-boolean v3, v3, Lcom/yeptelecom/audioprofile/AudioProfileState;->mHapticFeedbackEnabled:Z

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 2652
    .local v0, enabled:I
    :goto_0
    iget-object v3, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/4 v4, 0x7

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v0, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2654
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2655
    return-void

    .line 2651
    .end local v0           #enabled:I
    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private persistLockScreenToDatabase(Ljava/lang/String;Z)V
    .locals 7
    .parameter "profileKey"
    .parameter "enabled"

    .prologue
    const/4 v6, -0x1

    .line 2418
    const/4 v0, 0x1

    .line 2419
    .local v0, BUNDLE_SIZE:I
    new-instance v1, Landroid/os/Bundle;

    const/4 v4, 0x1

    invoke-direct {v1, v4}, Landroid/os/Bundle;-><init>(I)V

    .line 2420
    .local v1, bundle:Landroid/os/Bundle;
    invoke-static {p1}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getLockScreenKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2421
    .local v3, name:Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2422
    iget-object v4, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v5, 0x11

    invoke-virtual {v4, v5, v6, v6, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 2424
    .local v2, msg:Landroid/os/Message;
    invoke-virtual {v2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2425
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 2426
    return-void
.end method

.method private persistLockScreenToSystem()V
    .locals 6

    .prologue
    .line 2639
    const-string v2, "lockscreen_sounds_enabled"

    .line 2640
    .local v2, name:Ljava/lang/String;
    iget-object v3, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/yeptelecom/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/yeptelecom/audioprofile/AudioProfileState;

    move-result-object v3

    iget-boolean v3, v3, Lcom/yeptelecom/audioprofile/AudioProfileState;->mLockScreenSoundEnabled:Z

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 2641
    .local v0, enabled:I
    :goto_0
    iget-object v3, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/4 v4, 0x6

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v0, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2643
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2644
    return-void

    .line 2640
    .end local v0           #enabled:I
    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private persistProfileNameToDatabase(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "profileKey"
    .parameter "profileName"

    .prologue
    const/4 v6, -0x1

    .line 2464
    const/4 v0, 0x1

    .line 2465
    .local v0, BUNDLE_SIZE:I
    new-instance v1, Landroid/os/Bundle;

    const/4 v4, 0x1

    invoke-direct {v1, v4}, Landroid/os/Bundle;-><init>(I)V

    .line 2466
    .local v1, bundle:Landroid/os/Bundle;
    invoke-static {p1}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getProfileNameKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2467
    .local v3, name:Ljava/lang/String;
    invoke-virtual {v1, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2468
    iget-object v4, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v5, 0x13

    invoke-virtual {v4, v5, v6, v6, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 2470
    .local v2, msg:Landroid/os/Message;
    invoke-virtual {v2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2471
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 2472
    return-void
.end method

.method private persistRingtoneUriToSystem(I)V
    .locals 8
    .parameter "type"

    .prologue
    const/4 v6, 0x1

    const/4 v7, -0x1

    .line 2489
    const/4 v0, 0x1

    .line 2490
    .local v0, BUNDLE_SIZE:I
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v6}, Landroid/os/Bundle;-><init>(I)V

    .line 2491
    .local v1, bundle:Landroid/os/Bundle;
    const/4 v3, 0x0

    .line 2492
    .local v3, name:Ljava/lang/String;
    const/4 v4, 0x0

    .line 2494
    .local v4, uri:Landroid/net/Uri;
    sparse-switch p1, :sswitch_data_0

    .line 2521
    const-string v5, "AudioProfileService"

    const-string/jumbo v6, "persistRingtoneUriToSystem with unsupport type!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2527
    :goto_0
    return-void

    .line 2496
    :sswitch_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 2497
    iget-object v5, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/yeptelecom/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/yeptelecom/audioprofile/AudioProfileState;

    move-result-object v5

    iget-object v4, v5, Lcom/yeptelecom/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    .line 2498
    iget-object v5, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6, v7, v7, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 2524
    .local v2, msg:Landroid/os/Message;
    :goto_1
    if-nez v4, :cond_1

    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v1, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2525
    invoke-virtual {v2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2526
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 2503
    .end local v2           #msg:Landroid/os/Message;
    :sswitch_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 2504
    iget-object v5, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/yeptelecom/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/yeptelecom/audioprofile/AudioProfileState;

    move-result-object v5

    iget-object v4, v5, Lcom/yeptelecom/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    .line 2506
    sget-object v5, Lcom/yeptelecom/audioprofile/AudioProfileService;->SILENT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v5, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2507
    const/4 v4, 0x0

    .line 2509
    :cond_0
    iget-object v5, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/4 v6, 0x2

    invoke-virtual {v5, v6, v7, v7, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 2511
    .restart local v2       #msg:Landroid/os/Message;
    goto :goto_1

    .line 2514
    .end local v2           #msg:Landroid/os/Message;
    :sswitch_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 2515
    iget-object v5, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/yeptelecom/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/yeptelecom/audioprofile/AudioProfileState;

    move-result-object v5

    iget-object v4, v5, Lcom/yeptelecom/audioprofile/AudioProfileState;->mRingerStream2:Landroid/net/Uri;

    .line 2516
    iget-object v5, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/4 v6, 0x3

    invoke-virtual {v5, v6, v7, v7, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 2518
    .restart local v2       #msg:Landroid/os/Message;
    goto :goto_1

    .line 2524
    :cond_1
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 2494
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

.method private persistSoundEffectToDatabase(Ljava/lang/String;Z)V
    .locals 7
    .parameter "profileKey"
    .parameter "enabled"

    .prologue
    const/4 v6, -0x1

    .line 2401
    const/4 v0, 0x1

    .line 2402
    .local v0, BUNDLE_SIZE:I
    new-instance v1, Landroid/os/Bundle;

    const/4 v4, 0x1

    invoke-direct {v1, v4}, Landroid/os/Bundle;-><init>(I)V

    .line 2403
    .local v1, bundle:Landroid/os/Bundle;
    invoke-static {p1}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getSoundEffectKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2404
    .local v3, name:Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2405
    iget-object v4, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v5, 0x10

    invoke-virtual {v4, v5, v6, v6, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 2407
    .local v2, msg:Landroid/os/Message;
    invoke-virtual {v2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2408
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 2409
    return-void
.end method

.method private persistSoundEffectToSystem()V
    .locals 6

    .prologue
    .line 2628
    const-string/jumbo v2, "sound_effects_enabled"

    .line 2629
    .local v2, name:Ljava/lang/String;
    iget-object v3, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/yeptelecom/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/yeptelecom/audioprofile/AudioProfileState;

    move-result-object v3

    iget-boolean v3, v3, Lcom/yeptelecom/audioprofile/AudioProfileState;->mSoundEffectEnbled:Z

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 2630
    .local v0, enabled:I
    :goto_0
    iget-object v3, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v0, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2632
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2633
    return-void

    .line 2629
    .end local v0           #enabled:I
    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private persistStreamVolumeToDatabase(Ljava/lang/String;II)V
    .locals 5
    .parameter "profileKey"
    .parameter "streamType"
    .parameter "value"

    .prologue
    const/4 v4, -0x1

    .line 2330
    invoke-static {p1, p2}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getStreamVolumeKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 2331
    .local v1, name:Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 2353
    const-string v2, "AudioProfileService"

    const-string/jumbo v3, "persistStreamVolumeToDatabase with undefined stream type!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2357
    :goto_0
    return-void

    .line 2333
    :pswitch_0
    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v3, 0x1a

    invoke-virtual {v2, v3, p3, v4, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2356
    .local v0, msg:Landroid/os/Message;
    :goto_1
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 2338
    .end local v0           #msg:Landroid/os/Message;
    :pswitch_1
    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v3, 0x8

    invoke-virtual {v2, v3, p3, v4, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2340
    .restart local v0       #msg:Landroid/os/Message;
    goto :goto_1

    .line 2343
    .end local v0           #msg:Landroid/os/Message;
    :pswitch_2
    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v3, 0x9

    invoke-virtual {v2, v3, p3, v4, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2345
    .restart local v0       #msg:Landroid/os/Message;
    goto :goto_1

    .line 2348
    .end local v0           #msg:Landroid/os/Message;
    :pswitch_3
    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v3, 0xa

    invoke-virtual {v2, v3, p3, v4, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2350
    .restart local v0       #msg:Landroid/os/Message;
    goto :goto_1

    .line 2331
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private persistStreamVolumeToSystem(I)V
    .locals 5
    .parameter "streamType"

    .prologue
    .line 2539
    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mExt:Lcom/yeptelecom/common/audioprofile/IAudioProfileExtension;

    invoke-interface {v2, p1}, Lcom/yeptelecom/common/audioprofile/IAudioProfileExtension;->persistStreamVolumeToSystem(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2570
    :goto_0
    return-void

    .line 2541
    :cond_0
    const/4 v0, 0x0

    .line 2542
    .local v0, flags:I
    const/4 v1, 0x0

    .line 2543
    .local v1, volume:I
    packed-switch p1, :pswitch_data_0

    .line 2565
    const-string v2, "AudioProfileService"

    const-string/jumbo v3, "persistStreamVolumeToSystem with unsupport type!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2545
    :pswitch_0
    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/yeptelecom/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/yeptelecom/audioprofile/AudioProfileState;

    move-result-object v2

    iget v1, v2, Lcom/yeptelecom/audioprofile/AudioProfileState;->mMediaVolume:I

    .line 2546
    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v1, v0}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 2568
    :goto_1
    const-string v2, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "persistStreamVolumeToSystem: streamType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", volume = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2550
    :pswitch_1
    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/yeptelecom/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/yeptelecom/audioprofile/AudioProfileState;

    move-result-object v2

    iget v1, v2, Lcom/yeptelecom/audioprofile/AudioProfileState;->mRingerVolume:I

    .line 2551
    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1, v0}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_1

    .line 2555
    :pswitch_2
    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/yeptelecom/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/yeptelecom/audioprofile/AudioProfileState;

    move-result-object v2

    iget v1, v2, Lcom/yeptelecom/audioprofile/AudioProfileState;->mNotificationVolume:I

    .line 2556
    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v1, v0}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_1

    .line 2560
    :pswitch_3
    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/yeptelecom/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/yeptelecom/audioprofile/AudioProfileState;

    move-result-object v2

    iget v1, v2, Lcom/yeptelecom/audioprofile/AudioProfileState;->mAlarmVolume:I

    .line 2561
    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v1, v0}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_1

    .line 2543
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private persistValues(Z)V
    .locals 5
    .parameter "overrideSystem"

    .prologue
    const/4 v4, 0x2

    .line 1326
    iget-object v1, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yeptelecom/audioprofile/AudioProfileState;

    .line 1327
    .local v0, activeProfileState:Lcom/yeptelecom/audioprofile/AudioProfileState;
    if-nez v0, :cond_1

    .line 1328
    const-string v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "persistValues error with no "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    :goto_0
    invoke-direct {p0}, Lcom/yeptelecom/audioprofile/AudioProfileService;->persistVibrationToSystem()V

    .line 1338
    if-eqz p1, :cond_0

    .line 1339
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/yeptelecom/audioprofile/AudioProfileService;->persistStreamVolumeToSystem(I)V

    .line 1340
    invoke-direct {p0, v4}, Lcom/yeptelecom/audioprofile/AudioProfileService;->persistStreamVolumeToSystem(I)V

    .line 1341
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/yeptelecom/audioprofile/AudioProfileService;->persistStreamVolumeToSystem(I)V

    .line 1342
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/yeptelecom/audioprofile/AudioProfileService;->persistStreamVolumeToSystem(I)V

    .line 1343
    iget-object v1, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-static {v1}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    move-result-object v1

    sget-object v2, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->OUTDOOR:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v1, v2}, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1344
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/yeptelecom/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    .line 1345
    invoke-direct {p0, v4}, Lcom/yeptelecom/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    .line 1346
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/yeptelecom/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    .line 1351
    :cond_0
    invoke-direct {p0}, Lcom/yeptelecom/audioprofile/AudioProfileService;->persistDtmfToneToSystem()V

    .line 1352
    invoke-direct {p0}, Lcom/yeptelecom/audioprofile/AudioProfileService;->persistSoundEffectToSystem()V

    .line 1353
    invoke-direct {p0}, Lcom/yeptelecom/audioprofile/AudioProfileService;->persistLockScreenToSystem()V

    .line 1354
    invoke-direct {p0}, Lcom/yeptelecom/audioprofile/AudioProfileService;->persistHapticFeedbackToSystem()V

    .line 1355
    invoke-direct {p0}, Lcom/yeptelecom/audioprofile/AudioProfileService;->persistEmergencyToneToSystem()V

    .line 1356
    return-void

    .line 1331
    :cond_1
    const-string v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "persistValues: override = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/yeptelecom/audioprofile/AudioProfileState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private persistValuesToSystemByBatch(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2674
    .local p1, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v1, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v2, 0x14

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2676
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2677
    return-void
.end method

.method private persistVibrationToDatabase(Ljava/lang/String;Z)V
    .locals 7
    .parameter "profileKey"
    .parameter "enabled"

    .prologue
    const/4 v6, -0x1

    .line 2366
    const/4 v0, 0x2

    .line 2367
    .local v0, BUNDLE_SIZE:I
    new-instance v1, Landroid/os/Bundle;

    const/4 v4, 0x2

    invoke-direct {v1, v4}, Landroid/os/Bundle;-><init>(I)V

    .line 2368
    .local v1, bundle:Landroid/os/Bundle;
    invoke-static {p1}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getVibrationKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2369
    .local v3, name:Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2370
    const-string v4, "Vibration"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2371
    iget-object v4, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v5, 0xe

    invoke-virtual {v4, v5, v6, v6, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 2373
    .local v2, msg:Landroid/os/Message;
    invoke-virtual {v2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2374
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 2375
    return-void
.end method

.method private persistVibrationToSystem()V
    .locals 6

    .prologue
    .line 2576
    const-string/jumbo v2, "vibrate_when_ringing"

    .line 2577
    .local v2, name:Ljava/lang/String;
    iget-object v3, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/yeptelecom/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/yeptelecom/audioprofile/AudioProfileState;

    move-result-object v3

    iget-boolean v3, v3, Lcom/yeptelecom/audioprofile/AudioProfileState;->mVibrationEnabled:Z

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 2578
    .local v0, enabled:I
    :goto_0
    iget-object v3, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v4, 0x19

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v0, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2580
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2611
    return-void

    .line 2577
    .end local v0           #enabled:I
    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readAllProfileKeys()V
    .locals 13

    .prologue
    .line 2756
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    iget-object v1, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2759
    const-string/jumbo v9, "name"

    .line 2760
    .local v9, nameColumn:Ljava/lang/String;
    const-string/jumbo v11, "value"

    .line 2762
    .local v11, valueColumn:Ljava/lang/String;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    aput-object v11, v2, v0

    .line 2764
    .local v2, projection:[Ljava/lang/String;
    sget-object v0, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    invoke-static {v0}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getProfileKey(Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v7

    .line 2765
    .local v7, customPrefix:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 2766
    .local v10, selection:Ljava/lang/StringBuffer;
    invoke-virtual {v10, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " like \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "_%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "_key"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2768
    const-string v0, "AudioProfileService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readProfileKeys: selection = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2770
    const-string v5, "_id desc"

    .line 2771
    .local v5, sortOrder:Ljava/lang/String;
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2779
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_5

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2780
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 2782
    .local v12, valueIndex:I
    :cond_0
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2783
    .local v8, key:Ljava/lang/String;
    if-eqz v8, :cond_1

    const-string v0, ""

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2784
    :cond_1
    const-string v0, "AudioProfileService"

    const-string/jumbo v1, "readProfileKeys: Null custom key!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2789
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2791
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2796
    .end local v8           #key:Ljava/lang/String;
    .end local v12           #valueIndex:I
    :goto_1
    if-eqz v6, :cond_2

    .line 2797
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2800
    :cond_2
    return-void

    .line 2787
    .restart local v8       #key:Ljava/lang/String;
    .restart local v12       #valueIndex:I
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2788
    const-string v0, "AudioProfileService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readProfileKeys: Get custom key: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2796
    .end local v8           #key:Ljava/lang/String;
    .end local v12           #valueIndex:I
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 2797
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 2793
    :cond_5
    :try_start_2
    const-string v0, "AudioProfileService"

    const-string v1, "getProfileKeys: Null cursor!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private readDefaultRingtones()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 2940
    iget-object v3, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "ringtone"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2941
    .local v1, uriString:Ljava/lang/String;
    if-nez v1, :cond_0

    move-object v0, v2

    .line 2942
    .local v0, uri:Landroid/net/Uri;
    :goto_0
    iget-object v3, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2947
    iget-object v3, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "notification_sound"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2948
    if-nez v1, :cond_1

    move-object v0, v2

    .line 2949
    :goto_1
    iget-object v3, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    const/4 v4, 0x1

    invoke-interface {v3, v4, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2954
    iget-object v3, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "ringtone_2"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2955
    if-nez v1, :cond_2

    move-object v0, v2

    .line 2956
    :goto_2
    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    const/4 v3, 0x2

    invoke-interface {v2, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2957
    const-string v2, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "readDefaultRingtones: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2958
    return-void

    .line 2941
    .end local v0           #uri:Landroid/net/Uri;
    :cond_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 2948
    .restart local v0       #uri:Landroid/net/Uri;
    :cond_1
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    .line 2955
    :cond_2
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_2
.end method

.method private readPersistedSettings(Ljava/lang/String;)V
    .locals 31
    .parameter "profileKey"

    .prologue
    .line 2824
    if-nez p1, :cond_0

    .line 2825
    const-string v3, "AudioProfileService"

    const-string/jumbo v4, "readPersistedSettings with Null profile key!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2928
    :goto_0
    return-void

    .line 2829
    :cond_0
    const/4 v3, 0x3

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v5, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "name"

    aput-object v4, v5, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "value"

    aput-object v4, v5, v3

    .line 2834
    .local v5, projection:[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "name like \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2835
    .local v6, selection:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 2837
    .local v10, cursor:Landroid/database/Cursor;
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 2838
    .local v15, initValues:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v10, :cond_4

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2839
    const-string/jumbo v3, "name"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 2840
    .local v19, nameIndex:I
    const-string/jumbo v3, "value"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v27

    .line 2842
    .local v27, valueIndex:I
    :cond_1
    move/from16 v0, v19

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 2843
    .local v18, name:Ljava/lang/String;
    move/from16 v0, v27

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 2844
    .local v26, value:Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v15, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2845
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2850
    .end local v18           #name:Ljava/lang/String;
    .end local v19           #nameIndex:I
    .end local v26           #value:Ljava/lang/String;
    .end local v27           #valueIndex:I
    :goto_1
    if-eqz v10, :cond_2

    .line 2851
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2854
    :cond_2
    const/16 v18, 0x0

    .line 2855
    .restart local v18       #name:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getDefaultState(Ljava/lang/String;)Lcom/yeptelecom/audioprofile/AudioProfileState;

    move-result-object v11

    .line 2857
    .local v11, defaultState:Lcom/yeptelecom/audioprofile/AudioProfileState;
    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    .line 2858
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v15, v3}, Lcom/yeptelecom/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v29

    .line 2860
    .local v29, voiceCallUri:Landroid/net/Uri;
    const/4 v3, 0x2

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    .line 2862
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v15, v3}, Lcom/yeptelecom/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v20

    .line 2864
    .local v20, notificationUri:Landroid/net/Uri;
    const/16 v3, 0x8

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    .line 2865
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v15, v3}, Lcom/yeptelecom/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v30

    .line 2871
    .local v30, voiceCallUri2:Landroid/net/Uri;
    const/4 v3, 0x3

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getStreamVolumeKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    .line 2872
    iget v3, v11, Lcom/yeptelecom/audioprofile/AudioProfileState;->mMediaVolume:I

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v15, v3}, Lcom/yeptelecom/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;I)I

    move-result v17

    .line 2874
    .local v17, mediaVolume:I
    const/4 v3, 0x2

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getStreamVolumeKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    .line 2875
    iget v3, v11, Lcom/yeptelecom/audioprofile/AudioProfileState;->mRingerVolume:I

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v15, v3}, Lcom/yeptelecom/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;I)I

    move-result v24

    .line 2877
    .local v24, ringerVolume:I
    const/4 v3, 0x5

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getStreamVolumeKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    .line 2879
    iget v3, v11, Lcom/yeptelecom/audioprofile/AudioProfileState;->mNotificationVolume:I

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v15, v3}, Lcom/yeptelecom/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;I)I

    move-result v21

    .line 2882
    .local v21, notificationVolume:I
    const/4 v3, 0x4

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getStreamVolumeKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    .line 2883
    iget v3, v11, Lcom/yeptelecom/audioprofile/AudioProfileState;->mAlarmVolume:I

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v15, v3}, Lcom/yeptelecom/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;I)I

    move-result v9

    .line 2887
    .local v9, alarmVolume:I
    invoke-static/range {p1 .. p1}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getVibrationKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 2888
    iget-boolean v3, v11, Lcom/yeptelecom/audioprofile/AudioProfileState;->mVibrationEnabled:Z

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v15, v3}, Lcom/yeptelecom/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;Z)Z

    move-result v28

    .line 2890
    .local v28, vibration:Z
    invoke-static/range {p1 .. p1}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getDtmfToneKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 2891
    iget-boolean v3, v11, Lcom/yeptelecom/audioprofile/AudioProfileState;->mDtmfToneEnabled:Z

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v15, v3}, Lcom/yeptelecom/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;Z)Z

    move-result v12

    .line 2893
    .local v12, dtmfTone:Z
    invoke-static/range {p1 .. p1}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getSoundEffectKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 2894
    iget-boolean v3, v11, Lcom/yeptelecom/audioprofile/AudioProfileState;->mSoundEffectEnbled:Z

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v15, v3}, Lcom/yeptelecom/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;Z)Z

    move-result v25

    .line 2896
    .local v25, soundEffect:Z
    invoke-static/range {p1 .. p1}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getLockScreenKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 2897
    iget-boolean v3, v11, Lcom/yeptelecom/audioprofile/AudioProfileState;->mLockScreenSoundEnabled:Z

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v15, v3}, Lcom/yeptelecom/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;Z)Z

    move-result v16

    .line 2900
    .local v16, lockScreensound:Z
    invoke-static/range {p1 .. p1}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getHapticKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 2901
    iget-boolean v3, v11, Lcom/yeptelecom/audioprofile/AudioProfileState;->mHapticFeedbackEnabled:Z

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v15, v3}, Lcom/yeptelecom/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;Z)Z

    move-result v14

    .line 2904
    .local v14, hapticFeedback:Z
    invoke-static/range {p1 .. p1}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getEmergencyToneKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 2905
    iget v3, v11, Lcom/yeptelecom/audioprofile/AudioProfileState;->mEmergencyToneValue:I

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v15, v3}, Lcom/yeptelecom/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;I)I

    move-result v13

    .line 2909
    .local v13, emergencyTone:I
    new-instance v3, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v20

    move-object/from16 v2, v30

    invoke-virtual {v3, v0, v1, v2}, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->ringtone(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;

    move-result-object v3

    move/from16 v0, v17

    move/from16 v1, v24

    move/from16 v2, v21

    invoke-virtual {v3, v0, v1, v2, v9}, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->volume(IIII)Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;

    move-result-object v3

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->vibration(Z)Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;

    move-result-object v3

    invoke-virtual {v3, v12}, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->dtmfTone(Z)Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;

    move-result-object v3

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->soundEffect(Z)Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->lockScreenSound(Z)Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;

    move-result-object v3

    invoke-virtual {v3, v14}, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->hapticFeedback(Z)Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;

    move-result-object v3

    invoke-virtual {v3, v13}, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->emergencyTone(I)Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->build()Lcom/yeptelecom/audioprofile/AudioProfileState;

    move-result-object v22

    .line 2919
    .local v22, persistedState:Lcom/yeptelecom/audioprofile/AudioProfileState;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2921
    sget-object v3, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    invoke-static/range {p1 .. p1}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2922
    invoke-static/range {p1 .. p1}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getProfileNameKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 2923
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 2924
    .local v23, profileName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mCustomProfileName:Ljava/util/HashMap;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2927
    .end local v23           #profileName:Ljava/lang/String;
    :cond_3
    const-string v3, "AudioProfileService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "readPersistedSettings with "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ": "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lcom/yeptelecom/audioprofile/AudioProfileState;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2847
    .end local v9           #alarmVolume:I
    .end local v11           #defaultState:Lcom/yeptelecom/audioprofile/AudioProfileState;
    .end local v12           #dtmfTone:Z
    .end local v13           #emergencyTone:I
    .end local v14           #hapticFeedback:Z
    .end local v16           #lockScreensound:Z
    .end local v17           #mediaVolume:I
    .end local v18           #name:Ljava/lang/String;
    .end local v20           #notificationUri:Landroid/net/Uri;
    .end local v21           #notificationVolume:I
    .end local v22           #persistedState:Lcom/yeptelecom/audioprofile/AudioProfileState;
    .end local v24           #ringerVolume:I
    .end local v25           #soundEffect:Z
    .end local v28           #vibration:Z
    .end local v29           #voiceCallUri:Landroid/net/Uri;
    .end local v30           #voiceCallUri2:Landroid/net/Uri;
    :cond_4
    const-string v3, "AudioProfileService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "readPersistedSettings: No value for "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private readPredefinedProfileKeys()V
    .locals 3

    .prologue
    .line 2806
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v1, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v1}, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v1

    sget-object v2, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    invoke-static {v2}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getProfileKey(Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2808
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v1, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v1}, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v1

    sget-object v2, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    invoke-static {v2}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getProfileKey(Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2810
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v1, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->MEETING:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v1}, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v1

    sget-object v2, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->MEETING:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    invoke-static {v2}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getProfileKey(Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2812
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v1, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->OUTDOOR:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v1}, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v1

    sget-object v2, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->OUTDOOR:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    invoke-static {v2}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getProfileKey(Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2814
    const-string v0, "AudioProfileService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "readPredefindProfileKeys: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2815
    return-void
.end method

.method private readShouldSyncToSystem()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 2966
    invoke-static {}, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->values()[Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    move-result-object v3

    array-length v2, v3

    .line 2967
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 2968
    iget-object v3, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2967
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2970
    :cond_0
    iget-object v3, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-static {v3}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    move-result-object v0

    .line 2974
    .local v0, activeScenario:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;
    sget-object v3, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v3, v0}, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->MEETING:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v3, v0}, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2980
    :cond_1
    iget-object v3, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v4, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->media_volume:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v4}, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v4

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2986
    iget-object v3, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v4, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ringer_volume:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v4}, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v4

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2992
    iget-object v3, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v4, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->notification_volume:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v4}, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v4

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2998
    iget-object v3, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v4, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->alarm_volume:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v4}, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v4

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3007
    iget-object v3, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v4, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ringer_stream:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v4}, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v4

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3015
    iget-object v3, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v4, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->notification_stream:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v4}, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v4

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3025
    iget-object v3, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v4, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ringer_Stream_2:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v4}, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v4

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3028
    :cond_2
    const-string v3, "AudioProfileService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readShouldSyncToSystem: mShouldSyncToSystem = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3029
    return-void
.end method

.method private remove(Landroid/os/IBinder;)V
    .locals 6
    .parameter "binder"

    .prologue
    .line 3224
    iget-object v3, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    .line 3225
    :try_start_0
    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3226
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/yeptelecom/audioprofile/AudioProfileService$Record;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3227
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yeptelecom/audioprofile/AudioProfileService$Record;

    .line 3228
    .local v1, record:Lcom/yeptelecom/audioprofile/AudioProfileService$Record;
    iget-object v2, v1, Lcom/yeptelecom/audioprofile/AudioProfileService$Record;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3229
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 3230
    const-string v2, "AudioProfileService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removed AudioProfile change listener for: record.mBinder = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/yeptelecom/audioprofile/AudioProfileService$Record;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", clients = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3234
    .end local v0           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/yeptelecom/audioprofile/AudioProfileService$Record;>;"
    .end local v1           #record:Lcom/yeptelecom/audioprofile/AudioProfileService$Record;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/yeptelecom/audioprofile/AudioProfileService$Record;>;"
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3235
    return-void
.end method

.method private restoreToDefaultValues(Ljava/lang/String;)V
    .locals 10
    .parameter "profileKey"

    .prologue
    .line 1366
    invoke-static {p1}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getDefaultState(Ljava/lang/String;)Lcom/yeptelecom/audioprofile/AudioProfileState;

    move-result-object v0

    .line 1367
    .local v0, defaultState:Lcom/yeptelecom/audioprofile/AudioProfileState;
    invoke-virtual {p0, p1}, Lcom/yeptelecom/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/yeptelecom/audioprofile/AudioProfileState;

    move-result-object v3

    .line 1368
    .local v3, profileState:Lcom/yeptelecom/audioprofile/AudioProfileState;
    iget-object v8, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    monitor-enter v8

    .line 1369
    :try_start_0
    iget-object v7, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    iput-object v7, v3, Lcom/yeptelecom/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    .line 1370
    iget-object v7, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    const/4 v9, 0x1

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    iput-object v7, v3, Lcom/yeptelecom/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    .line 1371
    iget-object v7, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    const/4 v9, 0x2

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    iput-object v7, v3, Lcom/yeptelecom/audioprofile/AudioProfileState;->mRingerStream2:Landroid/net/Uri;

    .line 1373
    iget v7, v0, Lcom/yeptelecom/audioprofile/AudioProfileState;->mMediaVolume:I

    iput v7, v3, Lcom/yeptelecom/audioprofile/AudioProfileState;->mMediaVolume:I

    .line 1374
    iget v7, v0, Lcom/yeptelecom/audioprofile/AudioProfileState;->mRingerVolume:I

    iput v7, v3, Lcom/yeptelecom/audioprofile/AudioProfileState;->mRingerVolume:I

    .line 1375
    iget v7, v0, Lcom/yeptelecom/audioprofile/AudioProfileState;->mNotificationVolume:I

    iput v7, v3, Lcom/yeptelecom/audioprofile/AudioProfileState;->mNotificationVolume:I

    .line 1376
    iget v7, v0, Lcom/yeptelecom/audioprofile/AudioProfileState;->mAlarmVolume:I

    iput v7, v3, Lcom/yeptelecom/audioprofile/AudioProfileState;->mAlarmVolume:I

    .line 1378
    iget-boolean v7, v0, Lcom/yeptelecom/audioprofile/AudioProfileState;->mVibrationEnabled:Z

    iput-boolean v7, v3, Lcom/yeptelecom/audioprofile/AudioProfileState;->mVibrationEnabled:Z

    .line 1379
    iget-boolean v7, v0, Lcom/yeptelecom/audioprofile/AudioProfileState;->mDtmfToneEnabled:Z

    iput-boolean v7, v3, Lcom/yeptelecom/audioprofile/AudioProfileState;->mDtmfToneEnabled:Z

    .line 1380
    iget-boolean v7, v0, Lcom/yeptelecom/audioprofile/AudioProfileState;->mSoundEffectEnbled:Z

    iput-boolean v7, v3, Lcom/yeptelecom/audioprofile/AudioProfileState;->mSoundEffectEnbled:Z

    .line 1381
    iget-boolean v7, v0, Lcom/yeptelecom/audioprofile/AudioProfileState;->mLockScreenSoundEnabled:Z

    iput-boolean v7, v3, Lcom/yeptelecom/audioprofile/AudioProfileState;->mLockScreenSoundEnabled:Z

    .line 1382
    iget-boolean v7, v0, Lcom/yeptelecom/audioprofile/AudioProfileState;->mHapticFeedbackEnabled:Z

    iput-boolean v7, v3, Lcom/yeptelecom/audioprofile/AudioProfileState;->mHapticFeedbackEnabled:Z

    .line 1383
    iget v7, v0, Lcom/yeptelecom/audioprofile/AudioProfileState;->mEmergencyToneValue:I

    iput v7, v3, Lcom/yeptelecom/audioprofile/AudioProfileState;->mEmergencyToneValue:I

    .line 1384
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1385
    invoke-static {p1}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getAllKeys(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 1386
    .local v2, keyList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1387
    .local v4, sb:Ljava/lang/StringBuilder;
    const-string/jumbo v7, "name"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1388
    const-string v7, " in ("

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1389
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    .line 1390
    .local v5, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    add-int/lit8 v7, v5, -0x1

    if-ge v1, v7, :cond_0

    .line 1391
    const-string v7, "?,"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1390
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1384
    .end local v1           #i:I
    .end local v2           #keyList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v4           #sb:Ljava/lang/StringBuilder;
    .end local v5           #size:I
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 1393
    .restart local v1       #i:I
    .restart local v2       #keyList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4       #sb:Ljava/lang/StringBuilder;
    .restart local v5       #size:I
    :cond_0
    const-string v7, "?)"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1394
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1395
    .local v6, where:Ljava/lang/String;
    iget-object v8, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v9, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    new-array v7, v5, [Ljava/lang/String;

    invoke-interface {v2, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    invoke-virtual {v8, v9, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1397
    const-string v7, "AudioProfileService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "restoreToDefaultValues: profileKey = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", state = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0, p1}, Lcom/yeptelecom/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/yeptelecom/audioprofile/AudioProfileState;

    move-result-object v9

    invoke-virtual {v9}, Lcom/yeptelecom/audioprofile/AudioProfileState;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    return-void
.end method

.method private setActiveKey(Ljava/lang/String;)Z
    .locals 4
    .parameter "profileKey"

    .prologue
    .line 903
    iget-object v1, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "yep_audioprofile_active"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 905
    .local v0, succeed:Z
    iput-object p1, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    .line 906
    const-string v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setActiveKey: succeed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    return v0
.end method

.method private setLastActiveKey(Ljava/lang/String;)Z
    .locals 6
    .parameter "profileKey"

    .prologue
    .line 911
    iget-object v3, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "yep_audioprofile_last_active"

    invoke-static {v3, v4, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 913
    .local v2, succeed:Z
    iput-object p1, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;

    .line 915
    iget-object v3, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 916
    .local v1, sizeOfShouldSyncToSystem:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 917
    iget-object v3, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 916
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 919
    :cond_0
    const-string v3, "AudioProfileService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setLastActiveKey: succeed = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", profileKey = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    return v2
.end method

.method private setLastCustomActiveDeleted(Z)Z
    .locals 4
    .parameter "deleted"

    .prologue
    .line 924
    iget-object v1, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "yep_audioprofile_custom_deleted"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 926
    .local v0, succeed:Z
    iput-boolean p1, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mIsLastCustomActiveProfileDeleted:Z

    .line 927
    const-string v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setCustomActiveDeleted: changed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    return v0
.end method

.method private setRingtoneUriInStateMap(Lcom/yeptelecom/audioprofile/AudioProfileState;ILandroid/net/Uri;)V
    .locals 0
    .parameter "state"
    .parameter "type"
    .parameter "value"

    .prologue
    .line 1944
    sparse-switch p2, :sswitch_data_0

    .line 1960
    :goto_0
    return-void

    .line 1946
    :sswitch_0
    iput-object p3, p1, Lcom/yeptelecom/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    goto :goto_0

    .line 1950
    :sswitch_1
    iput-object p3, p1, Lcom/yeptelecom/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    goto :goto_0

    .line 1954
    :sswitch_2
    iput-object p3, p1, Lcom/yeptelecom/audioprofile/AudioProfileState;->mRingerStream2:Landroid/net/Uri;

    goto :goto_0

    .line 1944
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

.method private setShouldSyncToSystemFlag(IZ)V
    .locals 3
    .parameter "type"
    .parameter "shouldSync"

    .prologue
    .line 1896
    sparse-switch p1, :sswitch_data_0

    .line 1912
    :goto_0
    return-void

    .line 1898
    :sswitch_0
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v1, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ringer_stream:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v1}, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1902
    :sswitch_1
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v1, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->notification_stream:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v1}, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1906
    :sswitch_2
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v1, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ringer_Stream_2:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v1}, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1896
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

.method private syncGeneralRingtoneToOutdoor(Ljava/lang/String;ILandroid/net/Uri;)V
    .locals 5
    .parameter "profileKey"
    .parameter "type"
    .parameter "newRingtoneUri"

    .prologue
    .line 1919
    invoke-static {p1}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    move-result-object v1

    .line 1920
    .local v1, scenario:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;
    sget-object v2, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v2, v1}, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1921
    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v3, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->OUTDOOR:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v3}, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1922
    .local v0, outdoorKey:Ljava/lang/String;
    invoke-direct {p0, v0, p2, p3}, Lcom/yeptelecom/audioprofile/AudioProfileService;->doRingtoneUriSetting(Ljava/lang/String;ILandroid/net/Uri;)V

    .line 1923
    const-string v2, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "synchronize general to outdoor! ringtone type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1925
    .end local v0           #outdoorKey:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private syncRingtoneToSystem()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x8

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 1473
    const/4 v1, 0x0

    .line 1474
    .local v1, systemUri:Landroid/net/Uri;
    const/4 v0, 0x0

    .line 1477
    .local v0, profileUri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v3, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ringer_stream:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1478
    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    invoke-static {v2, v5}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 1480
    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v2, v5}, Lcom/yeptelecom/audioprofile/AudioProfileService;->getRingtoneUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    .line 1481
    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v3, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ringer_stream:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1482
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    .line 1484
    :cond_1
    invoke-direct {p0, v5}, Lcom/yeptelecom/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    .line 1485
    const-string v2, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "syncRingtoneToSystem: profileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    :cond_2
    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v3, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->notification_stream:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1492
    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    invoke-static {v2, v6}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 1494
    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v2, v6}, Lcom/yeptelecom/audioprofile/AudioProfileService;->getRingtoneUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    .line 1495
    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v3, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->notification_stream:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1496
    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    if-nez v0, :cond_5

    if-eqz v1, :cond_5

    .line 1498
    :cond_4
    invoke-direct {p0, v6}, Lcom/yeptelecom/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    .line 1499
    const-string v2, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "syncRingtoneToSystem: profileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    :cond_5
    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v3, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ringer_Stream_2:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1506
    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    invoke-static {v2, v7}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 1508
    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v2, v7}, Lcom/yeptelecom/audioprofile/AudioProfileService;->getRingtoneUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    .line 1509
    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v3, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ringer_Stream_2:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1510
    if-eqz v0, :cond_6

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    if-nez v0, :cond_8

    if-eqz v1, :cond_8

    .line 1512
    :cond_7
    invoke-direct {p0, v7}, Lcom/yeptelecom/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    .line 1513
    const-string v2, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "syncRingtoneToSystem: profileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    :cond_8
    return-void
.end method

.method private syncVolumeToSystem()V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 1410
    const/4 v1, 0x0

    .line 1411
    .local v1, systemVolume:I
    const/4 v0, 0x0

    .line 1413
    .local v0, profileVolume:I
    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v3, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->media_volume:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1414
    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 1415
    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v2, v7}, Lcom/yeptelecom/audioprofile/AudioProfileService;->getStreamVolume(Ljava/lang/String;I)I

    move-result v0

    .line 1416
    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v3, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->media_volume:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1417
    if-eq v0, v1, :cond_0

    .line 1418
    invoke-direct {p0, v7}, Lcom/yeptelecom/audioprofile/AudioProfileService;->persistStreamVolumeToSystem(I)V

    .line 1419
    const-string v2, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "syncVolumeToSystem: profileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", streamType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", volume = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    :cond_0
    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v3, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ringer_volume:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1427
    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 1428
    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v2, v6}, Lcom/yeptelecom/audioprofile/AudioProfileService;->getStreamVolume(Ljava/lang/String;I)I

    move-result v0

    .line 1429
    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v3, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ringer_volume:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1430
    if-eq v0, v1, :cond_1

    .line 1431
    invoke-direct {p0, v6}, Lcom/yeptelecom/audioprofile/AudioProfileService;->persistStreamVolumeToSystem(I)V

    .line 1432
    const-string v2, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "syncVolumeToSystem: profileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", streamType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", volume = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    :cond_1
    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v3, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->notification_volume:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1440
    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v9}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 1441
    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v2, v9}, Lcom/yeptelecom/audioprofile/AudioProfileService;->getStreamVolume(Ljava/lang/String;I)I

    move-result v0

    .line 1443
    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v3, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->notification_volume:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1444
    if-eq v0, v1, :cond_2

    .line 1445
    invoke-direct {p0, v9}, Lcom/yeptelecom/audioprofile/AudioProfileService;->persistStreamVolumeToSystem(I)V

    .line 1446
    const-string v2, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "syncVolumeToSystem: profileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", streamType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", volume = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    :cond_2
    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v3, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->alarm_volume:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1452
    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v8}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 1453
    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v2, v8}, Lcom/yeptelecom/audioprofile/AudioProfileService;->getStreamVolume(Ljava/lang/String;I)I

    move-result v0

    .line 1454
    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v3, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->alarm_volume:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1455
    if-eq v0, v1, :cond_3

    .line 1456
    invoke-direct {p0, v8}, Lcom/yeptelecom/audioprofile/AudioProfileService;->persistStreamVolumeToSystem(I)V

    .line 1457
    const-string v2, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "syncVolumeToSystem: profileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", streamType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", volume = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    :cond_3
    return-void
.end method


# virtual methods
.method public addProfile()Ljava/lang/String;
    .locals 13

    .prologue
    .line 1068
    invoke-virtual {p0}, Lcom/yeptelecom/audioprofile/AudioProfileService;->getProfileCount()I

    move-result v8

    const/16 v9, 0xa

    if-lt v8, v9, :cond_0

    .line 1069
    const-string v8, "AudioProfileService"

    const-string v9, "addProfile: Number of custom audio profile has reached upper limit!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    const/4 v5, 0x0

    .line 1121
    :goto_0
    return-object v5

    .line 1075
    :cond_0
    iget-object v8, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget-object v9, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ringer_stream:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v9}, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v9

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 1076
    .local v1, defaultRingStream:Landroid/net/Uri;
    if-nez v1, :cond_1

    .line 1077
    iget-object v8, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Landroid/media/RingtoneManager;->getSystemDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 1080
    :cond_1
    iget-object v8, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget-object v9, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->notification_stream:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v9}, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v9

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 1081
    .local v0, defaultNotificationStream:Landroid/net/Uri;
    if-nez v0, :cond_2

    .line 1082
    iget-object v8, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    const/4 v9, 0x2

    invoke-static {v8, v9}, Landroid/media/RingtoneManager;->getSystemDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    .line 1085
    :cond_2
    iget-object v8, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget-object v9, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ringer_Stream_2:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v9}, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v9

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 1086
    .local v2, defaultRingStream2:Landroid/net/Uri;
    if-nez v2, :cond_3

    .line 1087
    iget-object v8, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    const/16 v9, 0x8

    invoke-static {v8, v9}, Landroid/media/RingtoneManager;->getSystemDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    .line 1092
    :cond_3
    invoke-direct {p0}, Lcom/yeptelecom/audioprofile/AudioProfileService;->genCustomKey()Ljava/lang/String;

    move-result-object v5

    .line 1093
    .local v5, newKey:Ljava/lang/String;
    invoke-static {v5}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getDefaultState(Ljava/lang/String;)Lcom/yeptelecom/audioprofile/AudioProfileState;

    move-result-object v3

    .line 1094
    .local v3, defaultState:Lcom/yeptelecom/audioprofile/AudioProfileState;
    new-instance v8, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;

    invoke-direct {v8, v5}, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1, v0, v2}, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->ringtone(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;

    move-result-object v8

    iget v9, v3, Lcom/yeptelecom/audioprofile/AudioProfileState;->mMediaVolume:I

    iget v10, v3, Lcom/yeptelecom/audioprofile/AudioProfileState;->mRingerVolume:I

    iget v11, v3, Lcom/yeptelecom/audioprofile/AudioProfileState;->mNotificationVolume:I

    iget v12, v3, Lcom/yeptelecom/audioprofile/AudioProfileState;->mAlarmVolume:I

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->volume(IIII)Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;

    move-result-object v8

    iget-boolean v9, v3, Lcom/yeptelecom/audioprofile/AudioProfileState;->mVibrationEnabled:Z

    invoke-virtual {v8, v9}, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->vibration(Z)Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;

    move-result-object v8

    iget-boolean v9, v3, Lcom/yeptelecom/audioprofile/AudioProfileState;->mDtmfToneEnabled:Z

    invoke-virtual {v8, v9}, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->dtmfTone(Z)Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;

    move-result-object v8

    iget-boolean v9, v3, Lcom/yeptelecom/audioprofile/AudioProfileState;->mSoundEffectEnbled:Z

    invoke-virtual {v8, v9}, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->soundEffect(Z)Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;

    move-result-object v8

    iget-boolean v9, v3, Lcom/yeptelecom/audioprofile/AudioProfileState;->mLockScreenSoundEnabled:Z

    invoke-virtual {v8, v9}, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->lockScreenSound(Z)Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;

    move-result-object v8

    iget-boolean v9, v3, Lcom/yeptelecom/audioprofile/AudioProfileState;->mHapticFeedbackEnabled:Z

    invoke-virtual {v8, v9}, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->hapticFeedback(Z)Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;

    move-result-object v8

    iget v9, v3, Lcom/yeptelecom/audioprofile/AudioProfileState;->mEmergencyToneValue:I

    invoke-virtual {v8, v9}, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->emergencyTone(I)Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/yeptelecom/audioprofile/AudioProfileState$Builder;->build()Lcom/yeptelecom/audioprofile/AudioProfileState;

    move-result-object v6

    .line 1109
    .local v6, newProfileState:Lcom/yeptelecom/audioprofile/AudioProfileState;
    invoke-static {v5}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1110
    .local v4, name:Ljava/lang/String;
    iget-object v8, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v8, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    .line 1112
    .local v7, succeed:Z
    if-eqz v7, :cond_4

    .line 1113
    iget-object v9, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    monitor-enter v9

    .line 1114
    :try_start_0
    iget-object v8, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1115
    iget-object v8, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    invoke-virtual {v8, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1116
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1117
    const-string v8, "AudioProfileService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addProfile: key = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", state = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Lcom/yeptelecom/audioprofile/AudioProfileState;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1116
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 1119
    :cond_4
    const-string v8, "AudioProfileService"

    const-string v9, "addProfile: Failed!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public deleteProfile(Ljava/lang/String;)Z
    .locals 11
    .parameter "profileKey"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1131
    if-nez p1, :cond_0

    .line 1132
    const-string v6, "AudioProfileService"

    const-string v8, "deleteProfile: Null key!"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 1165
    :goto_0
    return v6

    .line 1136
    :cond_0
    invoke-static {p1}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getAllKeys(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 1137
    .local v2, keyList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1138
    .local v3, sb:Ljava/lang/StringBuilder;
    const-string/jumbo v6, "name"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1139
    const-string v6, " in ("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1140
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .line 1141
    .local v4, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    add-int/lit8 v6, v4, -0x1

    if-ge v1, v6, :cond_1

    .line 1142
    const-string v6, "?,"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1141
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1144
    :cond_1
    const-string v6, "?)"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1145
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1146
    .local v5, where:Ljava/lang/String;
    iget-object v9, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v10, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    new-array v6, v4, [Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    invoke-virtual {v9, v10, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1148
    .local v0, deleted:I
    const-string v6, "AudioProfileService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "deleteProfile: where = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", deleted = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    if-lez v0, :cond_3

    .line 1150
    iget-object v7, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    monitor-enter v7

    .line 1151
    :try_start_0
    iget-object v6, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1152
    iget-object v6, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1153
    iget-object v6, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mCustomProfileName:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1154
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1155
    iget-object v6, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1156
    const-string v6, "AudioProfileService"

    const-string v7, "deleteProfile: Custom active deleted and set to default."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    invoke-direct {p0, v8}, Lcom/yeptelecom/audioprofile/AudioProfileService;->setLastCustomActiveDeleted(Z)Z

    .line 1158
    iget-object v6, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v7, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v7}, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/yeptelecom/audioprofile/AudioProfileService;->setLastActiveKey(Ljava/lang/String;)Z

    .line 1160
    :cond_2
    const-string v6, "AudioProfileService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "deleteProfile: mKeys = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", mCustomProfileName = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mCustomProfileName:Ljava/util/HashMap;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v8

    .line 1162
    goto/16 :goto_0

    .line 1154
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 1164
    :cond_3
    const-string v6, "AudioProfileService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "deleteProfile: Failed to delete "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 1165
    goto/16 :goto_0
.end method

.method public getActiveProfileKey()Ljava/lang/String;
    .locals 4

    .prologue
    .line 938
    iget-object v1, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    monitor-enter v1

    .line 939
    :try_start_0
    const-string v0, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getActiveProfile: profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 941
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAllProfileKeys()Ljava/util/List;
    .locals 5
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
    .line 1280
    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    monitor-enter v2

    .line 1281
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1282
    .local v0, allKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1283
    const-string v1, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAllProfileKeys: keys = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    monitor-exit v2

    return-object v0

    .line 1285
    .end local v0           #allKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
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
    .line 1309
    invoke-virtual {p0}, Lcom/yeptelecom/audioprofile/AudioProfileService;->getProfileCount()I

    move-result v1

    const/4 v2, 0x4

    if-gt v1, v2, :cond_0

    .line 1310
    const/4 v0, 0x0

    .line 1317
    :goto_0
    return-object v0

    .line 1313
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1314
    .local v0, customizedProfileKeys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1315
    iget-object v1, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 1316
    const-string v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCustomizedProfileKeys: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getDefaultRingtone(I)Landroid/net/Uri;
    .locals 4
    .parameter "type"

    .prologue
    .line 2725
    const/4 v0, 0x0

    .line 2726
    .local v0, uri:Landroid/net/Uri;
    sparse-switch p1, :sswitch_data_0

    .line 2744
    const-string v1, "AudioProfileService"

    const-string v2, "getRingtoneUri with unsupport type!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2745
    const/4 v1, 0x0

    .line 2748
    :goto_0
    return-object v1

    .line 2728
    :sswitch_0
    iget-object v1, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget-object v2, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ringer_stream:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v2}, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #uri:Landroid/net/Uri;
    check-cast v0, Landroid/net/Uri;

    .line 2747
    .restart local v0       #uri:Landroid/net/Uri;
    :goto_1
    const-string v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDefaultRingtone: type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", default uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .line 2748
    goto :goto_0

    .line 2736
    :sswitch_1
    iget-object v1, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget-object v2, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->notification_stream:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v2}, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #uri:Landroid/net/Uri;
    check-cast v0, Landroid/net/Uri;

    .line 2737
    .restart local v0       #uri:Landroid/net/Uri;
    goto :goto_1

    .line 2740
    :sswitch_2
    iget-object v1, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget-object v2, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ringer_Stream_2:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v2}, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #uri:Landroid/net/Uri;
    check-cast v0, Landroid/net/Uri;

    .line 2741
    .restart local v0       #uri:Landroid/net/Uri;
    goto :goto_1

    .line 2726
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

.method public getDtmfToneEnabled(Ljava/lang/String;)Z
    .locals 5
    .parameter "profileKey"

    .prologue
    const/4 v4, 0x0

    .line 1670
    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "dtmf_tone"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1672
    .local v1, enabledState:I
    invoke-virtual {p0, p1}, Lcom/yeptelecom/audioprofile/AudioProfileService;->isActive(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1673
    if-nez v1, :cond_1

    .line 1674
    invoke-virtual {p0, p1}, Lcom/yeptelecom/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/yeptelecom/audioprofile/AudioProfileState;

    move-result-object v2

    iput-boolean v4, v2, Lcom/yeptelecom/audioprofile/AudioProfileState;->mDtmfToneEnabled:Z

    .line 1679
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/yeptelecom/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/yeptelecom/audioprofile/AudioProfileState;

    move-result-object v2

    iget-boolean v0, v2, Lcom/yeptelecom/audioprofile/AudioProfileState;->mDtmfToneEnabled:Z

    .line 1680
    .local v0, enabled:Z
    const-string v2, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDtmfToneEnabled: profileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", enabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1681
    return v0

    .line 1676
    .end local v0           #enabled:Z
    :cond_1
    invoke-virtual {p0, p1}, Lcom/yeptelecom/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/yeptelecom/audioprofile/AudioProfileState;

    move-result-object v2

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/yeptelecom/audioprofile/AudioProfileState;->mDtmfToneEnabled:Z

    goto :goto_0
.end method

.method public getEmergencyToneValue(Ljava/lang/String;)I
    .locals 4
    .parameter "profileKey"

    .prologue
    .line 1732
    invoke-virtual {p0, p1}, Lcom/yeptelecom/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/yeptelecom/audioprofile/AudioProfileState;

    move-result-object v1

    iget v0, v1, Lcom/yeptelecom/audioprofile/AudioProfileState;->mEmergencyToneValue:I

    .line 1733
    .local v0, value:I
    const-string v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEmergencyToneEnabled: profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1735
    return v0
.end method

.method public getHapticFeedbackEnabled(Ljava/lang/String;)Z
    .locals 4
    .parameter "profileKey"

    .prologue
    .line 1718
    invoke-virtual {p0, p1}, Lcom/yeptelecom/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/yeptelecom/audioprofile/AudioProfileState;

    move-result-object v1

    iget-boolean v0, v1, Lcom/yeptelecom/audioprofile/AudioProfileState;->mHapticFeedbackEnabled:Z

    .line 1719
    .local v0, enabled:Z
    const-string v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHapticFeedbackEnabled: profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1721
    return v0
.end method

.method public getLastActiveProfileKey()Ljava/lang/String;
    .locals 4

    .prologue
    .line 950
    iget-object v1, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    monitor-enter v1

    .line 951
    :try_start_0
    const-string v0, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLastActiveProfileKey: profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 953
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLockScreenEnabled(Ljava/lang/String;)Z
    .locals 4
    .parameter "profileKey"

    .prologue
    .line 1705
    invoke-virtual {p0, p1}, Lcom/yeptelecom/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/yeptelecom/audioprofile/AudioProfileState;

    move-result-object v1

    iget-boolean v0, v1, Lcom/yeptelecom/audioprofile/AudioProfileState;->mLockScreenSoundEnabled:Z

    .line 1706
    .local v0, enabled:Z
    const-string v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLockScreenEnabled: profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    return v0
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
    .line 1296
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1297
    .local v0, predefinedKeys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1298
    const-string v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPredefinedProfileKeys: keys = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    return-object v0
.end method

.method public getProfileCount()I
    .locals 5

    .prologue
    .line 1267
    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    monitor-enter v2

    .line 1268
    :try_start_0
    iget-object v1, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 1269
    .local v0, count:I
    const-string v1, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getProfileCount: count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    monitor-exit v2

    return v0

    .line 1271
    .end local v0           #count:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getProfileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "profileKey"

    .prologue
    .line 1810
    iget-object v1, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mCustomProfileName:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1811
    .local v0, profileName:Ljava/lang/String;
    const-string v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getProfileName: profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", profileName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1812
    return-object v0
.end method

.method public getProfileState(Ljava/lang/String;)Lcom/yeptelecom/audioprofile/AudioProfileState;
    .locals 5
    .parameter "profileKey"

    .prologue
    .line 1747
    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    monitor-enter v2

    .line 1748
    :try_start_0
    iget-object v1, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yeptelecom/audioprofile/AudioProfileState;

    .line 1749
    .local v0, profileState:Lcom/yeptelecom/audioprofile/AudioProfileState;
    if-nez v0, :cond_0

    .line 1751
    const-string v1, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getProfileState of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "is null, so create new one instead!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1753
    invoke-direct {p0, p1}, Lcom/yeptelecom/audioprofile/AudioProfileService;->readPersistedSettings(Ljava/lang/String;)V

    .line 1754
    iget-object v1, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #profileState:Lcom/yeptelecom/audioprofile/AudioProfileState;
    check-cast v0, Lcom/yeptelecom/audioprofile/AudioProfileState;

    .line 1756
    .restart local v0       #profileState:Lcom/yeptelecom/audioprofile/AudioProfileState;
    :cond_0
    monitor-exit v2

    return-object v0

    .line 1757
    .end local v0           #profileState:Lcom/yeptelecom/audioprofile/AudioProfileState;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getProfileStateString(Ljava/lang/String;)Ljava/util/List;
    .locals 6
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
    .line 1768
    iget-object v3, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yeptelecom/audioprofile/AudioProfileState;

    .line 1769
    .local v0, profileState:Lcom/yeptelecom/audioprofile/AudioProfileState;
    invoke-static {}, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->values()[Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    move-result-object v3

    array-length v1, v3

    .line 1770
    .local v1, size:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1771
    .local v2, state:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v3, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ringer_stream:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    iget-object v4, v0, Lcom/yeptelecom/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1773
    sget-object v3, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->notification_stream:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    iget-object v4, v0, Lcom/yeptelecom/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1775
    sget-object v3, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ringer_Stream_2:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    iget-object v4, v0, Lcom/yeptelecom/audioprofile/AudioProfileState;->mRingerStream2:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1778
    sget-object v3, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ringer_volume:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    iget v4, v0, Lcom/yeptelecom/audioprofile/AudioProfileState;->mRingerVolume:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1780
    sget-object v3, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->notification_volume:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    iget v4, v0, Lcom/yeptelecom/audioprofile/AudioProfileState;->mNotificationVolume:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1782
    sget-object v3, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->alarm_volume:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    iget v4, v0, Lcom/yeptelecom/audioprofile/AudioProfileState;->mAlarmVolume:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1785
    sget-object v3, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->vibration_enabled:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    iget-boolean v4, v0, Lcom/yeptelecom/audioprofile/AudioProfileState;->mVibrationEnabled:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1787
    sget-object v3, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->dtmftone_enabled:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    iget-boolean v4, v0, Lcom/yeptelecom/audioprofile/AudioProfileState;->mDtmfToneEnabled:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1789
    sget-object v3, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->soundeffect_enbled:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    iget-boolean v4, v0, Lcom/yeptelecom/audioprofile/AudioProfileState;->mSoundEffectEnbled:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1791
    sget-object v3, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->lockscreensound_enabled:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    iget-boolean v4, v0, Lcom/yeptelecom/audioprofile/AudioProfileState;->mLockScreenSoundEnabled:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1793
    sget-object v3, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->hapticfeedback_enabled:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    iget-boolean v4, v0, Lcom/yeptelecom/audioprofile/AudioProfileState;->mHapticFeedbackEnabled:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1795
    sget-object v3, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->emergency_tone:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    iget v4, v0, Lcom/yeptelecom/audioprofile/AudioProfileState;->mEmergencyToneValue:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1798
    const-string v3, "AudioProfileService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getProfileStateString for profileKey = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1799
    return-object v2
.end method

.method public getRingtoneUri(Ljava/lang/String;I)Landroid/net/Uri;
    .locals 4
    .parameter "profileKey"
    .parameter "type"

    .prologue
    const/4 v1, 0x0

    .line 1534
    if-nez p1, :cond_0

    .line 1535
    const-string v2, "AudioProfileService"

    const-string v3, "getRingtoneUri with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 1569
    :goto_0
    return-object v0

    .line 1539
    :cond_0
    const/4 v0, 0x0

    .line 1540
    .local v0, uri:Landroid/net/Uri;
    sparse-switch p2, :sswitch_data_0

    .line 1554
    const-string v2, "AudioProfileService"

    const-string v3, "getRingtoneUri with unsupport type!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 1555
    goto :goto_0

    .line 1542
    :sswitch_0
    invoke-virtual {p0, p1}, Lcom/yeptelecom/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/yeptelecom/audioprofile/AudioProfileState;

    move-result-object v1

    iget-object v0, v1, Lcom/yeptelecom/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    .line 1557
    :goto_1
    sget-object v1, Lcom/yeptelecom/audioprofile/AudioProfileService;->SILENT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1560
    const/4 v0, 0x0

    .line 1567
    :cond_1
    :goto_2
    const-string v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRingtoneUri: profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1546
    :sswitch_1
    invoke-virtual {p0, p1}, Lcom/yeptelecom/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/yeptelecom/audioprofile/AudioProfileState;

    move-result-object v1

    iget-object v0, v1, Lcom/yeptelecom/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    .line 1547
    goto :goto_1

    .line 1550
    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/yeptelecom/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/yeptelecom/audioprofile/AudioProfileState;

    move-result-object v1

    iget-object v0, v1, Lcom/yeptelecom/audioprofile/AudioProfileState;->mRingerStream2:Landroid/net/Uri;

    .line 1551
    goto :goto_1

    .line 1561
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Lcom/yeptelecom/audioprofile/AudioProfileService;->isRingtoneExist(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1565
    :cond_3
    iget-object v1, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    invoke-static {v1, p2}, Landroid/media/RingtoneManager;->getSystemDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    goto :goto_2

    .line 1540
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

.method public getSoundEffectEnabled(Ljava/lang/String;)Z
    .locals 4
    .parameter "profileKey"

    .prologue
    .line 1692
    invoke-virtual {p0, p1}, Lcom/yeptelecom/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/yeptelecom/audioprofile/AudioProfileState;

    move-result-object v1

    iget-boolean v0, v1, Lcom/yeptelecom/audioprofile/AudioProfileState;->mSoundEffectEnbled:Z

    .line 1693
    .local v0, enabled:Z
    const-string v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSoundEffectEnabled: profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    return v0
.end method

.method public getStreamMaxVolume(I)I
    .locals 1
    .parameter "streamType"

    .prologue
    .line 1582
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    return v0
.end method

.method public getStreamVolume(Ljava/lang/String;I)I
    .locals 5
    .parameter "profileKey"
    .parameter "streamType"

    .prologue
    const/4 v0, 0x0

    .line 1616
    if-nez p1, :cond_0

    .line 1617
    const-string v2, "AudioProfileService"

    const-string v3, "getStreamVolume with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1646
    :goto_0
    return v0

    .line 1621
    :cond_0
    const/4 v1, 0x0

    .line 1622
    .local v1, volume:I
    packed-switch p2, :pswitch_data_0

    .line 1640
    const-string v2, "AudioProfileService"

    const-string v3, "getStreamVolume with unsupport type!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1624
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/yeptelecom/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/yeptelecom/audioprofile/AudioProfileState;

    move-result-object v2

    iget v1, v2, Lcom/yeptelecom/audioprofile/AudioProfileState;->mMediaVolume:I

    .line 1643
    :goto_1
    invoke-direct {p0, p2, v1}, Lcom/yeptelecom/audioprofile/AudioProfileService;->getStreamValidVolume(II)I

    move-result v0

    .line 1644
    .local v0, validVolume:I
    const-string v2, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getStreamVolume: profileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", streamType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", volume = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1628
    .end local v0           #validVolume:I
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/yeptelecom/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/yeptelecom/audioprofile/AudioProfileState;

    move-result-object v2

    iget v1, v2, Lcom/yeptelecom/audioprofile/AudioProfileState;->mRingerVolume:I

    .line 1629
    goto :goto_1

    .line 1632
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/yeptelecom/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/yeptelecom/audioprofile/AudioProfileState;

    move-result-object v2

    iget v1, v2, Lcom/yeptelecom/audioprofile/AudioProfileState;->mNotificationVolume:I

    .line 1633
    goto :goto_1

    .line 1636
    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/yeptelecom/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/yeptelecom/audioprofile/AudioProfileState;

    move-result-object v2

    iget v1, v2, Lcom/yeptelecom/audioprofile/AudioProfileState;->mAlarmVolume:I

    .line 1637
    goto :goto_1

    .line 1622
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public getVibrationEnabled(Ljava/lang/String;)Z
    .locals 4
    .parameter "profileKey"

    .prologue
    .line 1657
    invoke-virtual {p0, p1}, Lcom/yeptelecom/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/yeptelecom/audioprofile/AudioProfileState;

    move-result-object v1

    iget-boolean v0, v1, Lcom/yeptelecom/audioprofile/AudioProfileState;->mVibrationEnabled:Z

    .line 1658
    .local v0, enabled:Z
    const-string v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVibrationEnabled: profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1659
    return v0
.end method

.method public isActive(Ljava/lang/String;)Z
    .locals 5
    .parameter "profileKey"

    .prologue
    .line 2689
    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    monitor-enter v2

    .line 2690
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 2691
    .local v0, actived:Z
    :goto_0
    const-string v1, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isActive: profileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", actived = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2692
    monitor-exit v2

    return v0

    .line 2690
    .end local v0           #actived:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2693
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isNameExist(Ljava/lang/String;)Z
    .locals 4
    .parameter "name"

    .prologue
    .line 1254
    iget-object v1, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mCustomProfileName:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    .line 1255
    .local v0, isExisted:Z
    const-string v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isNameExist: name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isExisted = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mCustomProfileName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mCustomProfileName:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    return v0
.end method

.method public isRingtoneExist(Landroid/net/Uri;)Z
    .locals 6
    .parameter "uri"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2698
    :try_start_0
    iget-object v4, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v5, "r"

    invoke-virtual {v4, p1, v5}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 2699
    .local v1, fd:Landroid/content/res/AssetFileDescriptor;
    if-nez v1, :cond_0

    .line 2710
    .end local v1           #fd:Landroid/content/res/AssetFileDescriptor;
    :goto_0
    return v2

    .line 2702
    .restart local v1       #fd:Landroid/content/res/AssetFileDescriptor;
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move v2, v3

    .line 2703
    goto :goto_0

    .line 2705
    .end local v1           #fd:Landroid/content/res/AssetFileDescriptor;
    :catch_0
    move-exception v0

    .line 2706
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 2708
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 2709
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v2, v3

    .line 2710
    goto :goto_0
.end method

.method public listenAudioProfie(Lcom/yeptelecom/common/audioprofile/IAudioProfileListener;I)V
    .locals 11
    .parameter "callback"
    .parameter "event"

    .prologue
    .line 3172
    if-eqz p2, :cond_4

    .line 3173
    iget-object v7, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    monitor-enter v7

    .line 3176
    const/4 v3, 0x0

    .line 3178
    .local v3, record:Lcom/yeptelecom/audioprofile/AudioProfileService$Record;
    :try_start_0
    invoke-interface {p1}, Lcom/yeptelecom/common/audioprofile/IAudioProfileListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 3179
    .local v0, binder:Landroid/os/IBinder;
    iget-object v6, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    .line 3180
    .local v5, size:I
    const/4 v2, 0x0

    .local v2, i:I
    move-object v4, v3

    .end local v3           #record:Lcom/yeptelecom/audioprofile/AudioProfileService$Record;
    .local v4, record:Lcom/yeptelecom/audioprofile/AudioProfileService$Record;
    :goto_0
    if-ge v2, v5, :cond_2

    .line 3181
    :try_start_1
    iget-object v6, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yeptelecom/audioprofile/AudioProfileService$Record;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3182
    .end local v4           #record:Lcom/yeptelecom/audioprofile/AudioProfileService$Record;
    .restart local v3       #record:Lcom/yeptelecom/audioprofile/AudioProfileService$Record;
    :try_start_2
    iget-object v6, v3, Lcom/yeptelecom/audioprofile/AudioProfileService$Record;->mBinder:Landroid/os/IBinder;

    if-ne v0, v6, :cond_1

    .line 3191
    :goto_1
    iput p2, v3, Lcom/yeptelecom/audioprofile/AudioProfileService$Record;->mEvent:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3193
    const/4 v6, 0x1

    if-ne p2, v6, :cond_3

    .line 3195
    :try_start_3
    iget-object v6, v3, Lcom/yeptelecom/audioprofile/AudioProfileService$Record;->mCallback:Lcom/yeptelecom/common/audioprofile/IAudioProfileListener;

    iget-object v8, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-interface {v6, v8}, Lcom/yeptelecom/common/audioprofile/IAudioProfileListener;->onAudioProfileChanged(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 3213
    :cond_0
    :goto_2
    :try_start_4
    const-string v6, "AudioProfileService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "listenAudioProfie with event = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " sucessed, record.mBinder = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Lcom/yeptelecom/audioprofile/AudioProfileService$Record;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ,clients = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3216
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3221
    .end local v0           #binder:Landroid/os/IBinder;
    .end local v2           #i:I
    .end local v3           #record:Lcom/yeptelecom/audioprofile/AudioProfileService$Record;
    .end local v5           #size:I
    :goto_3
    return-void

    .line 3180
    .restart local v0       #binder:Landroid/os/IBinder;
    .restart local v2       #i:I
    .restart local v3       #record:Lcom/yeptelecom/audioprofile/AudioProfileService$Record;
    .restart local v5       #size:I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    move-object v4, v3

    .end local v3           #record:Lcom/yeptelecom/audioprofile/AudioProfileService$Record;
    .restart local v4       #record:Lcom/yeptelecom/audioprofile/AudioProfileService$Record;
    goto :goto_0

    .line 3186
    :cond_2
    :try_start_5
    new-instance v3, Lcom/yeptelecom/audioprofile/AudioProfileService$Record;

    const/4 v6, 0x0

    invoke-direct {v3, v6}, Lcom/yeptelecom/audioprofile/AudioProfileService$Record;-><init>(Lcom/yeptelecom/audioprofile/AudioProfileService$1;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3187
    .end local v4           #record:Lcom/yeptelecom/audioprofile/AudioProfileService$Record;
    .restart local v3       #record:Lcom/yeptelecom/audioprofile/AudioProfileService$Record;
    :try_start_6
    iput-object v0, v3, Lcom/yeptelecom/audioprofile/AudioProfileService$Record;->mBinder:Landroid/os/IBinder;

    .line 3188
    iput-object p1, v3, Lcom/yeptelecom/audioprofile/AudioProfileService$Record;->mCallback:Lcom/yeptelecom/common/audioprofile/IAudioProfileListener;

    .line 3189
    iget-object v6, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3216
    .end local v0           #binder:Landroid/os/IBinder;
    .end local v2           #i:I
    .end local v5           #size:I
    :catchall_0
    move-exception v6

    :goto_4
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v6

    .line 3196
    .restart local v0       #binder:Landroid/os/IBinder;
    .restart local v2       #i:I
    .restart local v5       #size:I
    :catch_0
    move-exception v1

    .line 3197
    .local v1, e:Landroid/os/RemoteException;
    :try_start_7
    iget-object v6, v3, Lcom/yeptelecom/audioprofile/AudioProfileService$Record;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v6}, Lcom/yeptelecom/audioprofile/AudioProfileService;->remove(Landroid/os/IBinder;)V

    .line 3198
    const-string v6, "AudioProfileService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Dead object in listenAudioProfie, remove listener\'s callback!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 3201
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_3
    const/4 v6, 0x4

    if-ne p2, v6, :cond_0

    .line 3203
    :try_start_8
    iget-object v6, v3, Lcom/yeptelecom/audioprofile/AudioProfileService$Record;->mCallback:Lcom/yeptelecom/common/audioprofile/IAudioProfileListener;

    iget-object v8, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/yeptelecom/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/yeptelecom/audioprofile/AudioProfileState;

    move-result-object v8

    iget v8, v8, Lcom/yeptelecom/audioprofile/AudioProfileState;->mRingerVolume:I

    iget-object v9, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v9}, Lcom/yeptelecom/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/yeptelecom/audioprofile/AudioProfileState;

    move-result-object v9

    iget v9, v9, Lcom/yeptelecom/audioprofile/AudioProfileState;->mRingerVolume:I

    iget-object v10, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-interface {v6, v8, v9, v10}, Lcom/yeptelecom/common/audioprofile/IAudioProfileListener;->onRingerVolumeChanged(IILjava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_2

    .line 3207
    :catch_1
    move-exception v1

    .line 3208
    .restart local v1       #e:Landroid/os/RemoteException;
    :try_start_9
    iget-object v6, v3, Lcom/yeptelecom/audioprofile/AudioProfileService$Record;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v6}, Lcom/yeptelecom/audioprofile/AudioProfileService;->remove(Landroid/os/IBinder;)V

    .line 3209
    const-string v6, "AudioProfileService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Dead object in listenAudioProfie, remove listener\'s callback!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_2

    .line 3218
    .end local v0           #binder:Landroid/os/IBinder;
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v2           #i:I
    .end local v3           #record:Lcom/yeptelecom/audioprofile/AudioProfileService$Record;
    .end local v5           #size:I
    :cond_4
    invoke-interface {p1}, Lcom/yeptelecom/common/audioprofile/IAudioProfileListener;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/yeptelecom/audioprofile/AudioProfileService;->remove(Landroid/os/IBinder;)V

    .line 3219
    const-string v6, "AudioProfileService"

    const-string v7, "listenAudioProfie with LISTEN_NONE, so remove this listener\'s callback!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 3216
    .restart local v0       #binder:Landroid/os/IBinder;
    .restart local v2       #i:I
    .restart local v4       #record:Lcom/yeptelecom/audioprofile/AudioProfileService$Record;
    .restart local v5       #size:I
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4           #record:Lcom/yeptelecom/audioprofile/AudioProfileService$Record;
    .restart local v3       #record:Lcom/yeptelecom/audioprofile/AudioProfileService$Record;
    goto :goto_4
.end method

.method public notifyMediaVolumeChanged(IILjava/lang/String;)V
    .locals 7
    .parameter "oldVolume"
    .parameter "newVolume"
    .parameter "profileKey"

    .prologue
    .line 1031
    iget-object v3, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 1032
    const-string v3, "AudioProfileService"

    const-string/jumbo v4, "notifyMediaVolumeChanged falled, because active profile key is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    :goto_0
    return-void

    .line 1035
    :cond_0
    iget-object v3, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1036
    const-string v3, "AudioProfileService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifyMediaVolumeChanged: oldVolume = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", newVolume = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", profile = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", client = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    iget-object v4, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1039
    :try_start_0
    iget-object v3, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1040
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/yeptelecom/audioprofile/AudioProfileService$Record;>;"
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1041
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yeptelecom/audioprofile/AudioProfileService$Record;

    .line 1042
    .local v2, record:Lcom/yeptelecom/audioprofile/AudioProfileService$Record;
    iget v3, v2, Lcom/yeptelecom/audioprofile/AudioProfileService$Record;->mEvent:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v5, 0x8

    if-ne v3, v5, :cond_1

    .line 1044
    :try_start_1
    iget-object v3, v2, Lcom/yeptelecom/audioprofile/AudioProfileService$Record;->mCallback:Lcom/yeptelecom/common/audioprofile/IAudioProfileListener;

    invoke-interface {v3, p1, p2, p3}, Lcom/yeptelecom/common/audioprofile/IAudioProfileListener;->onMediaVolumeChanged(IILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1046
    :catch_0
    move-exception v0

    .line 1047
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1048
    const-string v3, "AudioProfileService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dead object in notifyMediaVolumeChanged, remove listener\'s callback: record.mBinder = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/yeptelecom/audioprofile/AudioProfileService$Record;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", clients = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", exception = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1055
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/yeptelecom/audioprofile/AudioProfileService$Record;>;"
    .end local v2           #record:Lcom/yeptelecom/audioprofile/AudioProfileService$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .restart local v1       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/yeptelecom/audioprofile/AudioProfileService$Record;>;"
    :cond_2
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 1057
    .end local v1           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/yeptelecom/audioprofile/AudioProfileService$Record;>;"
    :cond_3
    const-string v3, "AudioProfileService"

    const-string/jumbo v4, "notifyRingerVolumeChanged falled, because there are no listener!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public notifyRingerVolumeChanged(IILjava/lang/String;)V
    .locals 7
    .parameter "oldVolume"
    .parameter "newVolume"
    .parameter "profileKey"

    .prologue
    .line 995
    iget-object v3, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 996
    const-string v3, "AudioProfileService"

    const-string/jumbo v4, "notifyRingerVolumeChanged falled, because active profile key is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    :goto_0
    return-void

    .line 999
    :cond_0
    iget-object v3, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1000
    const-string v3, "AudioProfileService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifyRingerVolumeChanged: oldVolume = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", newVolume = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", profile = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", client = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    iget-object v4, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1003
    :try_start_0
    iget-object v3, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1004
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/yeptelecom/audioprofile/AudioProfileService$Record;>;"
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1005
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yeptelecom/audioprofile/AudioProfileService$Record;

    .line 1006
    .local v2, record:Lcom/yeptelecom/audioprofile/AudioProfileService$Record;
    iget v3, v2, Lcom/yeptelecom/audioprofile/AudioProfileService$Record;->mEvent:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x4

    if-ne v3, v5, :cond_1

    .line 1008
    :try_start_1
    iget-object v3, v2, Lcom/yeptelecom/audioprofile/AudioProfileService$Record;->mCallback:Lcom/yeptelecom/common/audioprofile/IAudioProfileListener;

    invoke-interface {v3, p1, p2, p3}, Lcom/yeptelecom/common/audioprofile/IAudioProfileListener;->onRingerVolumeChanged(IILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1010
    :catch_0
    move-exception v0

    .line 1011
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1012
    const-string v3, "AudioProfileService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dead object in notifyAudioProfileChanged, remove listener\'s callback: record.mBinder = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/yeptelecom/audioprofile/AudioProfileService$Record;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", clients = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", exception = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1019
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/yeptelecom/audioprofile/AudioProfileService$Record;>;"
    .end local v2           #record:Lcom/yeptelecom/audioprofile/AudioProfileService$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .restart local v1       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/yeptelecom/audioprofile/AudioProfileService$Record;>;"
    :cond_2
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 1021
    .end local v1           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/yeptelecom/audioprofile/AudioProfileService$Record;>;"
    :cond_3
    const-string v3, "AudioProfileService"

    const-string/jumbo v4, "notifyRingerVolumeChanged falled, because there are no listener!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public persistRingtoneUriToDatabase(Ljava/lang/String;ILandroid/net/Uri;)V
    .locals 7
    .parameter "profileKey"
    .parameter "type"
    .parameter "uri"

    .prologue
    const/4 v6, -0x1

    .line 2291
    invoke-static {p1, p2}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 2292
    .local v3, name:Ljava/lang/String;
    const/4 v0, 0x1

    .line 2293
    .local v0, BUNDLE_SIZE:I
    new-instance v1, Landroid/os/Bundle;

    const/4 v4, 0x1

    invoke-direct {v1, v4}, Landroid/os/Bundle;-><init>(I)V

    .line 2294
    .local v1, bundle:Landroid/os/Bundle;
    if-nez p3, :cond_0

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2295
    sparse-switch p2, :sswitch_data_0

    .line 2312
    const-string v4, "AudioProfileService"

    const-string/jumbo v5, "persistRingtoneUriToDatabase with undefined stream type!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2317
    :goto_1
    return-void

    .line 2294
    :cond_0
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 2297
    :sswitch_0
    iget-object v4, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v5, 0xb

    invoke-virtual {v4, v5, v6, v6, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 2315
    .local v2, msg:Landroid/os/Message;
    :goto_2
    invoke-virtual {v2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2316
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 2302
    .end local v2           #msg:Landroid/os/Message;
    :sswitch_1
    iget-object v4, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v5, 0xc

    invoke-virtual {v4, v5, v6, v6, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 2304
    .restart local v2       #msg:Landroid/os/Message;
    goto :goto_2

    .line 2307
    .end local v2           #msg:Landroid/os/Message;
    :sswitch_2
    iget-object v4, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v5, 0xd

    invoke-virtual {v4, v5, v6, v6, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 2309
    .restart local v2       #msg:Landroid/os/Message;
    goto :goto_2

    .line 2295
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

.method public reset()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    .line 1173
    const-string v8, "AudioProfileService"

    const-string/jumbo v9, "reset start!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    iget-object v8, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v9, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v9}, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v9

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1176
    .local v1, generalKey:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/yeptelecom/audioprofile/AudioProfileService;->isActive(Ljava/lang/String;)Z

    move-result v3

    .line 1177
    .local v3, isGeneralActive:Z
    iget-object v9, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    monitor-enter v9

    .line 1182
    :try_start_0
    invoke-direct {p0, v1}, Lcom/yeptelecom/audioprofile/AudioProfileService;->restoreToDefaultValues(Ljava/lang/String;)V

    .line 1185
    invoke-virtual {p0, v1}, Lcom/yeptelecom/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/yeptelecom/audioprofile/AudioProfileState;

    move-result-object v5

    .line 1186
    .local v5, profileState:Lcom/yeptelecom/audioprofile/AudioProfileState;
    iget-object v8, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    const/4 v10, 0x1

    invoke-static {v8, v10}, Landroid/media/RingtoneManager;->getSystemDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v8

    iput-object v8, v5, Lcom/yeptelecom/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    .line 1187
    iget-object v8, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    const/4 v10, 0x2

    invoke-static {v8, v10}, Landroid/media/RingtoneManager;->getSystemDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v8

    iput-object v8, v5, Lcom/yeptelecom/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    .line 1188
    iget-object v8, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    const/16 v10, 0x8

    invoke-static {v8, v10}, Landroid/media/RingtoneManager;->getSystemDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v8

    iput-object v8, v5, Lcom/yeptelecom/audioprofile/AudioProfileState;->mRingerStream2:Landroid/net/Uri;

    .line 1191
    if-eqz v3, :cond_0

    .line 1192
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/yeptelecom/audioprofile/AudioProfileService;->persistValues(Z)V

    .line 1202
    :goto_0
    const-string v8, "AudioProfileService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "reset: profileKey = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", state = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    invoke-virtual {v11, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1208
    .local v0, allKeys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1209
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1210
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1211
    .local v4, profileKey:Ljava/lang/String;
    invoke-static {v4}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    move-result-object v7

    .line 1212
    .local v7, scenaria:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;
    sget-object v8, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v8, v7}, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1213
    invoke-virtual {p0, v4}, Lcom/yeptelecom/audioprofile/AudioProfileService;->deleteProfile(Ljava/lang/String;)Z

    .line 1217
    :goto_2
    const-string v8, "AudioProfileService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "reset: profileKey = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", state = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1223
    .end local v0           #allKeys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #profileKey:Ljava/lang/String;
    .end local v5           #profileState:Lcom/yeptelecom/audioprofile/AudioProfileState;
    .end local v7           #scenaria:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 1194
    .restart local v5       #profileState:Lcom/yeptelecom/audioprofile/AudioProfileState;
    :cond_0
    :try_start_1
    invoke-direct {p0, v1}, Lcom/yeptelecom/audioprofile/AudioProfileService;->setActiveKey(Ljava/lang/String;)Z

    .line 1195
    iget-object v8, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v8}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v6

    .line 1196
    .local v6, ringerMode:I
    if-eq v6, v11, :cond_1

    .line 1197
    iget-object v8, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v10, 0x2

    invoke-virtual {v8, v10}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 1199
    :cond_1
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/yeptelecom/audioprofile/AudioProfileService;->persistValues(Z)V

    .line 1200
    invoke-direct {p0}, Lcom/yeptelecom/audioprofile/AudioProfileService;->notifyAudioProfileChanged()V

    goto/16 :goto_0

    .line 1215
    .end local v6           #ringerMode:I
    .restart local v0       #allKeys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #profileKey:Ljava/lang/String;
    .restart local v7       #scenaria:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;
    :cond_2
    invoke-direct {p0, v4}, Lcom/yeptelecom/audioprofile/AudioProfileService;->restoreToDefaultValues(Ljava/lang/String;)V

    goto :goto_2

    .line 1220
    .end local v4           #profileKey:Ljava/lang/String;
    .end local v7           #scenaria:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;
    :cond_3
    const-string v8, "AudioProfileService"

    const-string/jumbo v10, "reset end!"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    const-string v10, "AudioProfileService"

    iget-object v8, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v11, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->OUTDOOR:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v11}, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v11

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/yeptelecom/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/yeptelecom/audioprofile/AudioProfileState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/yeptelecom/audioprofile/AudioProfileState;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1224
    return-void
.end method

.method public setActiveProfile(Ljava/lang/String;)V
    .locals 1
    .parameter "profileKey"

    .prologue
    .line 899
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/yeptelecom/audioprofile/AudioProfileService;->setActiveProfile(Ljava/lang/String;Z)V

    .line 900
    return-void
.end method

.method public setActiveProfile(Ljava/lang/String;Z)V
    .locals 15
    .parameter "profileKey"
    .parameter "shouldSetRingerMode"

    .prologue
    .line 712
    invoke-virtual {p0}, Lcom/yeptelecom/audioprofile/AudioProfileService;->getActiveProfileKey()Ljava/lang/String;

    move-result-object v5

    .line 713
    .local v5, oldProfileKey:Ljava/lang/String;
    move-object/from16 v3, p1

    .line 714
    .local v3, newProfileKey:Ljava/lang/String;
    const-string v11, "AudioProfileService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "setActiveProfile>>>: oldProfileKey = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", newProfileKey = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", shouldSetRingerMode = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 719
    const-string v11, "AudioProfileService"

    const-string/jumbo v12, "setActiveProfile with same profile key with active profile, do nothing!"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    :goto_0
    return-void

    .line 721
    :cond_0
    iget-object v12, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    monitor-enter v12

    .line 722
    :try_start_0
    invoke-direct {p0, v3}, Lcom/yeptelecom/audioprofile/AudioProfileService;->setActiveKey(Ljava/lang/String;)Z

    .line 723
    const/4 v7, 0x1

    .line 725
    .local v7, overrideSystem:Z
    iget-object v11, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mExt:Lcom/yeptelecom/common/audioprofile/IAudioProfileExtension;

    iget-boolean v13, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mIsLastCustomActiveProfileDeleted:Z

    move/from16 v0, p2

    invoke-interface {v11, v0, v5, v3, v13}, Lcom/yeptelecom/common/audioprofile/IAudioProfileExtension;->getActiveProfileChangeInfo(ZLjava/lang/String;Ljava/lang/String;Z)Lcom/yeptelecom/common/audioprofile/IAudioProfileExtension$IActiveProfileChangeInfo;

    move-result-object v1

    .line 729
    .local v1, apcInfo:Lcom/yeptelecom/common/audioprofile/IAudioProfileExtension$IActiveProfileChangeInfo;
    if-eqz v1, :cond_5

    .line 730
    invoke-interface {v1}, Lcom/yeptelecom/common/audioprofile/IAudioProfileExtension$IActiveProfileChangeInfo;->getRingerModeToUpdate()I

    move-result v9

    .line 731
    .local v9, ringerModeToUpdate:I
    const/16 v11, -0x3e7

    if-eq v9, v11, :cond_1

    .line 732
    iget-object v11, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v11, v9}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 733
    iput v9, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mRingerMode:I

    .line 734
    const-string v11, "AudioProfileService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "CMCC: setActiveProfile: RingerMode now set "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    :cond_1
    invoke-interface {v1}, Lcom/yeptelecom/common/audioprofile/IAudioProfileExtension$IActiveProfileChangeInfo;->shouldSetLastActiveKey()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 741
    invoke-direct {p0, v5}, Lcom/yeptelecom/audioprofile/AudioProfileService;->setLastActiveKey(Ljava/lang/String;)Z

    move-result v2

    .line 742
    .local v2, lastActiveChanged:Z
    if-eqz v2, :cond_2

    iget-boolean v11, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mIsLastCustomActiveProfileDeleted:Z

    if-eqz v11, :cond_2

    .line 743
    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/yeptelecom/audioprofile/AudioProfileService;->setLastCustomActiveDeleted(Z)Z

    .line 747
    .end local v2           #lastActiveChanged:Z
    :cond_2
    invoke-interface {v1}, Lcom/yeptelecom/common/audioprofile/IAudioProfileExtension$IActiveProfileChangeInfo;->shouldSyncToSystem()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 751
    invoke-direct {p0}, Lcom/yeptelecom/audioprofile/AudioProfileService;->syncVolumeToSystem()V

    .line 752
    invoke-direct {p0}, Lcom/yeptelecom/audioprofile/AudioProfileService;->syncRingtoneToSystem()V

    .line 755
    :cond_3
    invoke-interface {v1}, Lcom/yeptelecom/common/audioprofile/IAudioProfileExtension$IActiveProfileChangeInfo;->shouldOverrideSystem()Z

    move-result v7

    .line 881
    .end local v9           #ringerModeToUpdate:I
    :cond_4
    :goto_1
    invoke-direct {p0, v7}, Lcom/yeptelecom/audioprofile/AudioProfileService;->persistValues(Z)V

    .line 883
    invoke-direct {p0}, Lcom/yeptelecom/audioprofile/AudioProfileService;->notifyAudioProfileChanged()V

    .line 885
    invoke-virtual {p0, v3}, Lcom/yeptelecom/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/yeptelecom/audioprofile/AudioProfileState;

    move-result-object v11

    iget v10, v11, Lcom/yeptelecom/audioprofile/AudioProfileState;->mRingerVolume:I

    .line 886
    .local v10, ringerVolume:I
    invoke-virtual {p0, v10, v10, v3}, Lcom/yeptelecom/audioprofile/AudioProfileService;->notifyRingerVolumeChanged(IILjava/lang/String;)V

    .line 887
    const-string v11, "AudioProfileService"

    const-string/jumbo v13, "setActiveProfile<<<"

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    monitor-exit v12

    goto :goto_0

    .end local v1           #apcInfo:Lcom/yeptelecom/common/audioprofile/IAudioProfileExtension$IActiveProfileChangeInfo;
    .end local v7           #overrideSystem:Z
    .end local v10           #ringerVolume:I
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11

    .line 757
    .restart local v1       #apcInfo:Lcom/yeptelecom/common/audioprofile/IAudioProfileExtension$IActiveProfileChangeInfo;
    .restart local v7       #overrideSystem:Z
    :cond_5
    :try_start_1
    invoke-static {v3}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    move-result-object v4

    .line 758
    .local v4, newScenario:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;
    invoke-static {v5}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    move-result-object v6

    .line 760
    .local v6, oldScenario:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;
    iget-object v11, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v11}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v8

    .line 761
    .local v8, ringerMode:I
    sget-object v11, Lcom/yeptelecom/audioprofile/AudioProfileService$8;->$SwitchMap$com$yeptelecom$audioprofile$AudioProfileManager$Scenario:[I

    invoke-virtual {v4}, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v13

    aget v11, v11, v13

    packed-switch v11, :pswitch_data_0

    .line 831
    :cond_6
    :goto_2
    :pswitch_0
    if-eqz p2, :cond_7

    .line 832
    const/4 v11, 0x2

    if-eq v8, v11, :cond_13

    .line 833
    iget-object v11, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v13, 0x2

    invoke-virtual {v11, v13}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 834
    const/4 v11, 0x2

    iput v11, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mRingerMode:I

    .line 835
    const-string v11, "AudioProfileService"

    const-string/jumbo v13, "setActiveProfile: RingerMode is VIBRATE or SILENT, now set NORMAL"

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    :cond_7
    :goto_3
    invoke-virtual {p0, v3}, Lcom/yeptelecom/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/yeptelecom/audioprofile/AudioProfileState;

    move-result-object v11

    iget v11, v11, Lcom/yeptelecom/audioprofile/AudioProfileState;->mRingerVolume:I

    if-nez v11, :cond_8

    .line 853
    const/4 v11, 0x1

    invoke-virtual {p0, v3, v11}, Lcom/yeptelecom/audioprofile/AudioProfileService;->syncRingerVolumeToProfile(Ljava/lang/String;I)V

    .line 857
    const-string v11, "AudioProfileService"

    const-string/jumbo v13, "setActiveProfile: profile volume is 0, change to 1"

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    :cond_8
    sget-object v11, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v11, v6}, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    sget-object v11, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->MEETING:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v11, v6}, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    :cond_9
    iget-object v11, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 869
    iget-boolean v7, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mIsLastCustomActiveProfileDeleted:Z

    .line 873
    invoke-direct {p0}, Lcom/yeptelecom/audioprofile/AudioProfileService;->syncVolumeToSystem()V

    .line 874
    invoke-direct {p0}, Lcom/yeptelecom/audioprofile/AudioProfileService;->syncRingtoneToSystem()V

    goto :goto_1

    .line 764
    :pswitch_1
    if-eqz p2, :cond_a

    .line 765
    if-eqz v8, :cond_d

    .line 766
    iget-object v11, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 767
    const/4 v11, 0x0

    iput v11, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mRingerMode:I

    .line 768
    const-string v11, "AudioProfileService"

    const-string/jumbo v13, "setActiveProfile: RingerMode is not SILENT, now set SILENT"

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    :cond_a
    :goto_4
    sget-object v11, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v11, v6}, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_b

    sget-object v11, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v11, v6}, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_b

    sget-object v11, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->OUTDOOR:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v11, v6}, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 781
    :cond_b
    invoke-direct {p0, v5}, Lcom/yeptelecom/audioprofile/AudioProfileService;->setLastActiveKey(Ljava/lang/String;)Z

    move-result v2

    .line 782
    .restart local v2       #lastActiveChanged:Z
    if-eqz v2, :cond_c

    iget-boolean v11, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mIsLastCustomActiveProfileDeleted:Z

    if-eqz v11, :cond_c

    .line 783
    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/yeptelecom/audioprofile/AudioProfileService;->setLastCustomActiveDeleted(Z)Z

    .line 786
    .end local v2           #lastActiveChanged:Z
    :cond_c
    const/4 v7, 0x0

    .line 787
    goto/16 :goto_1

    .line 771
    :cond_d
    const-string v11, "AudioProfileService"

    const-string/jumbo v13, "setActiveProfile: RingerMode is already SILENT"

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 791
    :pswitch_2
    if-eqz p2, :cond_e

    .line 792
    const/4 v11, 0x1

    if-eq v8, v11, :cond_11

    .line 793
    iget-object v11, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v13, 0x1

    invoke-virtual {v11, v13}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 794
    const/4 v11, 0x1

    iput v11, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mRingerMode:I

    .line 795
    const-string v11, "AudioProfileService"

    const-string/jumbo v13, "setActiveProfile: RingerMode is not VIBRATE, now set VIBRATE"

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    :cond_e
    :goto_5
    sget-object v11, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v11, v6}, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_f

    sget-object v11, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v11, v6}, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_f

    sget-object v11, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->OUTDOOR:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v11, v6}, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 808
    :cond_f
    invoke-direct {p0, v5}, Lcom/yeptelecom/audioprofile/AudioProfileService;->setLastActiveKey(Ljava/lang/String;)Z

    move-result v2

    .line 809
    .restart local v2       #lastActiveChanged:Z
    if-eqz v2, :cond_10

    iget-boolean v11, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mIsLastCustomActiveProfileDeleted:Z

    if-eqz v11, :cond_10

    .line 810
    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/yeptelecom/audioprofile/AudioProfileService;->setLastCustomActiveDeleted(Z)Z

    .line 814
    .end local v2           #lastActiveChanged:Z
    :cond_10
    const/4 v7, 0x0

    .line 815
    goto/16 :goto_1

    .line 798
    :cond_11
    const-string v11, "AudioProfileService"

    const-string/jumbo v13, "setActiveProfile: RingerMode is already VIBRATE"

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 818
    :pswitch_3
    if-eqz p2, :cond_6

    .line 819
    const/4 v11, 0x3

    if-eq v8, v11, :cond_12

    .line 820
    iget-object v11, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v13, 0x3

    invoke-virtual {v11, v13}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 821
    const/4 v11, 0x3

    iput v11, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mRingerMode:I

    .line 822
    const-string v11, "AudioProfileService"

    const-string/jumbo v13, "setActiveProfile: RingerMode is not RINGER_MODE_OUTDOOR, now set RINGER_MODE_OUTDOOR"

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    :goto_6
    const/16 p2, 0x0

    goto/16 :goto_2

    .line 825
    :cond_12
    const-string v11, "AudioProfileService"

    const-string/jumbo v13, "setActiveProfile: RingerMode is already RINGER_MODE_OUTDOOR"

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 838
    :cond_13
    const-string v11, "AudioProfileService"

    const-string/jumbo v13, "setActiveProfile: RingerMode is already NORMAL"

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    .line 761
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setDtmfToneEnabled(Ljava/lang/String;Z)V
    .locals 4
    .parameter "profileKey"
    .parameter "enabled"

    .prologue
    .line 2119
    invoke-virtual {p0, p1}, Lcom/yeptelecom/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/yeptelecom/audioprofile/AudioProfileState;

    move-result-object v0

    .line 2120
    .local v0, profileState:Lcom/yeptelecom/audioprofile/AudioProfileState;
    if-nez v0, :cond_1

    .line 2121
    const-string v1, "AudioProfileService"

    const-string/jumbo v2, "setDtmfToneEnabled profile state not exist!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2137
    :cond_0
    :goto_0
    return-void

    .line 2125
    :cond_1
    iget-boolean v1, v0, Lcom/yeptelecom/audioprofile/AudioProfileState;->mDtmfToneEnabled:Z

    if-eq v1, p2, :cond_0

    .line 2127
    invoke-direct {p0, p1, p2}, Lcom/yeptelecom/audioprofile/AudioProfileService;->persistDtmfToneToDatabase(Ljava/lang/String;Z)V

    .line 2128
    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    monitor-enter v2

    .line 2129
    :try_start_0
    iput-boolean p2, v0, Lcom/yeptelecom/audioprofile/AudioProfileState;->mDtmfToneEnabled:Z

    .line 2130
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2132
    invoke-virtual {p0, p1}, Lcom/yeptelecom/audioprofile/AudioProfileService;->isActive(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2133
    invoke-direct {p0}, Lcom/yeptelecom/audioprofile/AudioProfileService;->persistDtmfToneToSystem()V

    .line 2135
    :cond_2
    const-string v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDtmfToneEnabled: profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2130
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setEmergencyToneValue(Ljava/lang/String;I)V
    .locals 4
    .parameter "profileKey"
    .parameter "value"

    .prologue
    .line 2234
    invoke-virtual {p0, p1}, Lcom/yeptelecom/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/yeptelecom/audioprofile/AudioProfileState;

    move-result-object v0

    .line 2235
    .local v0, profileState:Lcom/yeptelecom/audioprofile/AudioProfileState;
    if-nez v0, :cond_1

    .line 2236
    const-string v1, "AudioProfileService"

    const-string/jumbo v2, "setEmergencyToneEnabled profile state not exist!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2253
    :cond_0
    :goto_0
    return-void

    .line 2240
    :cond_1
    iget v1, v0, Lcom/yeptelecom/audioprofile/AudioProfileState;->mEmergencyToneValue:I

    if-eq v1, p2, :cond_0

    .line 2242
    invoke-direct {p0, p1, p2}, Lcom/yeptelecom/audioprofile/AudioProfileService;->persistEmergencyToneToDatabase(Ljava/lang/String;I)V

    .line 2243
    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    monitor-enter v2

    .line 2244
    :try_start_0
    iput p2, v0, Lcom/yeptelecom/audioprofile/AudioProfileState;->mEmergencyToneValue:I

    .line 2245
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2247
    invoke-virtual {p0, p1}, Lcom/yeptelecom/audioprofile/AudioProfileService;->isActive(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2248
    invoke-direct {p0}, Lcom/yeptelecom/audioprofile/AudioProfileService;->persistEmergencyToneToSystem()V

    .line 2250
    :cond_2
    const-string v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setEmergencyToneEnabled: profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2245
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setHapticFeedbackEnabled(Ljava/lang/String;Z)V
    .locals 4
    .parameter "profileKey"
    .parameter "enabled"

    .prologue
    .line 2205
    invoke-virtual {p0, p1}, Lcom/yeptelecom/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/yeptelecom/audioprofile/AudioProfileState;

    move-result-object v0

    .line 2206
    .local v0, profileState:Lcom/yeptelecom/audioprofile/AudioProfileState;
    if-nez v0, :cond_1

    .line 2207
    const-string v1, "AudioProfileService"

    const-string/jumbo v2, "setHapticFeedbackEnabled profile state not exist!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2224
    :cond_0
    :goto_0
    return-void

    .line 2211
    :cond_1
    iget-boolean v1, v0, Lcom/yeptelecom/audioprofile/AudioProfileState;->mHapticFeedbackEnabled:Z

    if-eq v1, p2, :cond_0

    .line 2213
    invoke-direct {p0, p1, p2}, Lcom/yeptelecom/audioprofile/AudioProfileService;->persistHapticFeedbackToDatabase(Ljava/lang/String;Z)V

    .line 2214
    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    monitor-enter v2

    .line 2215
    :try_start_0
    iput-boolean p2, v0, Lcom/yeptelecom/audioprofile/AudioProfileState;->mHapticFeedbackEnabled:Z

    .line 2216
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2218
    invoke-virtual {p0, p1}, Lcom/yeptelecom/audioprofile/AudioProfileService;->isActive(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2219
    invoke-direct {p0}, Lcom/yeptelecom/audioprofile/AudioProfileService;->persistHapticFeedbackToSystem()V

    .line 2221
    :cond_2
    const-string v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setHapticFeedbackEnabled: profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2216
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setLockScreenEnabled(Ljava/lang/String;Z)V
    .locals 4
    .parameter "profileKey"
    .parameter "enabled"

    .prologue
    .line 2176
    invoke-virtual {p0, p1}, Lcom/yeptelecom/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/yeptelecom/audioprofile/AudioProfileState;

    move-result-object v0

    .line 2177
    .local v0, profileState:Lcom/yeptelecom/audioprofile/AudioProfileState;
    if-nez v0, :cond_1

    .line 2178
    const-string v1, "AudioProfileService"

    const-string/jumbo v2, "setLockScreenEnabled profile state not exist!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2195
    :cond_0
    :goto_0
    return-void

    .line 2182
    :cond_1
    iget-boolean v1, v0, Lcom/yeptelecom/audioprofile/AudioProfileState;->mLockScreenSoundEnabled:Z

    if-eq v1, p2, :cond_0

    .line 2184
    invoke-direct {p0, p1, p2}, Lcom/yeptelecom/audioprofile/AudioProfileService;->persistLockScreenToDatabase(Ljava/lang/String;Z)V

    .line 2185
    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    monitor-enter v2

    .line 2186
    :try_start_0
    iput-boolean p2, v0, Lcom/yeptelecom/audioprofile/AudioProfileState;->mLockScreenSoundEnabled:Z

    .line 2187
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2189
    invoke-virtual {p0, p1}, Lcom/yeptelecom/audioprofile/AudioProfileService;->isActive(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2190
    invoke-direct {p0}, Lcom/yeptelecom/audioprofile/AudioProfileService;->persistLockScreenToSystem()V

    .line 2192
    :cond_2
    const-string v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setLockScreenEnabled: profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2187
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setProfileName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "profileKey"
    .parameter "newName"

    .prologue
    .line 2263
    iget-object v1, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mCustomProfileName:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2264
    .local v0, profileName:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    .line 2267
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/yeptelecom/audioprofile/AudioProfileService;->persistProfileNameToDatabase(Ljava/lang/String;Ljava/lang/String;)V

    .line 2268
    iget-object v1, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mCustomProfileName:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2269
    const-string v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setProfileName: profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2273
    :goto_0
    return-void

    .line 2271
    :cond_2
    const-string v1, "AudioProfileService"

    const-string/jumbo v2, "setProfileName with Null name!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setRingtoneUri(Ljava/lang/String;ILandroid/net/Uri;)V
    .locals 5
    .parameter "profileKey"
    .parameter "type"
    .parameter "ringtoneUri"

    .prologue
    .line 1830
    invoke-virtual {p0, p1}, Lcom/yeptelecom/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/yeptelecom/audioprofile/AudioProfileState;

    move-result-object v1

    .line 1831
    .local v1, profileState:Lcom/yeptelecom/audioprofile/AudioProfileState;
    if-nez v1, :cond_0

    .line 1832
    const-string v2, "AudioProfileService"

    const-string/jumbo v3, "setRingtoneUri profile state not exist!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    :goto_0
    return-void

    .line 1836
    :cond_0
    invoke-direct {p0, p2}, Lcom/yeptelecom/audioprofile/AudioProfileService;->isValidRingtoneType(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1837
    const-string v2, "AudioProfileService"

    const-string/jumbo v3, "setRingtoneUri with undefined stream type!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1840
    :cond_1
    move-object v0, p3

    .line 1841
    .local v0, newRingtoneUri:Landroid/net/Uri;
    invoke-direct {p0, v1, p2, v0}, Lcom/yeptelecom/audioprofile/AudioProfileService;->isRingtoneUriChanged(Lcom/yeptelecom/audioprofile/AudioProfileState;ILandroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1842
    const-string v2, "AudioProfileService"

    const-string/jumbo v3, "setRingtoneUri with ringtone uri unchanged!"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    :cond_2
    const/4 v2, 0x2

    if-ne v2, p2, :cond_3

    .line 1848
    if-nez v0, :cond_3

    .line 1849
    sget-object v0, Lcom/yeptelecom/audioprofile/AudioProfileService;->SILENT_NOTIFICATION_URI:Landroid/net/Uri;

    .line 1854
    :cond_3
    invoke-direct {p0, p1, p2, v0}, Lcom/yeptelecom/audioprofile/AudioProfileService;->doRingtoneUriSetting(Ljava/lang/String;ILandroid/net/Uri;)V

    .line 1858
    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1859
    const/4 v2, 0x1

    invoke-direct {p0, p2, v2}, Lcom/yeptelecom/audioprofile/AudioProfileService;->setShouldSyncToSystemFlag(IZ)V

    .line 1863
    :cond_4
    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mExt:Lcom/yeptelecom/common/audioprofile/IAudioProfileExtension;

    invoke-interface {v2}, Lcom/yeptelecom/common/audioprofile/IAudioProfileExtension;->shouldSyncGeneralRingtoneToOutdoor()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1864
    invoke-direct {p0, p1, p2, v0}, Lcom/yeptelecom/audioprofile/AudioProfileService;->syncGeneralRingtoneToOutdoor(Ljava/lang/String;ILandroid/net/Uri;)V

    .line 1867
    :cond_5
    const-string v2, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setRingtoneUri: profileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setSoundEffectEnabled(Ljava/lang/String;Z)V
    .locals 4
    .parameter "profileKey"
    .parameter "enabled"

    .prologue
    .line 2147
    invoke-virtual {p0, p1}, Lcom/yeptelecom/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/yeptelecom/audioprofile/AudioProfileState;

    move-result-object v0

    .line 2148
    .local v0, profileState:Lcom/yeptelecom/audioprofile/AudioProfileState;
    if-nez v0, :cond_1

    .line 2149
    const-string v1, "AudioProfileService"

    const-string/jumbo v2, "setSoundEffectEnabled profile state not exist!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2166
    :cond_0
    :goto_0
    return-void

    .line 2153
    :cond_1
    iget-boolean v1, v0, Lcom/yeptelecom/audioprofile/AudioProfileState;->mSoundEffectEnbled:Z

    if-eq v1, p2, :cond_0

    .line 2155
    invoke-direct {p0, p1, p2}, Lcom/yeptelecom/audioprofile/AudioProfileService;->persistSoundEffectToDatabase(Ljava/lang/String;Z)V

    .line 2156
    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    monitor-enter v2

    .line 2157
    :try_start_0
    iput-boolean p2, v0, Lcom/yeptelecom/audioprofile/AudioProfileState;->mSoundEffectEnbled:Z

    .line 2158
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2160
    invoke-virtual {p0, p1}, Lcom/yeptelecom/audioprofile/AudioProfileService;->isActive(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2161
    invoke-direct {p0}, Lcom/yeptelecom/audioprofile/AudioProfileService;->persistSoundEffectToSystem()V

    .line 2163
    :cond_2
    const-string v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSoundEffectEnabled: profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2158
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setStreamVolume(Ljava/lang/String;II)V
    .locals 5
    .parameter "profileKey"
    .parameter "streamType"
    .parameter "index"

    .prologue
    const/4 v4, 0x1

    .line 1979
    invoke-direct {p0, p2, p3}, Lcom/yeptelecom/audioprofile/AudioProfileService;->getStreamValidVolume(II)I

    move-result v1

    .line 1980
    .local v1, validIndex:I
    invoke-virtual {p0, p1}, Lcom/yeptelecom/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/yeptelecom/audioprofile/AudioProfileState;

    move-result-object v0

    .line 1981
    .local v0, profileState:Lcom/yeptelecom/audioprofile/AudioProfileState;
    if-nez v0, :cond_0

    .line 1982
    const-string v2, "AudioProfileService"

    const-string/jumbo v3, "setStreamVolume profile state not exist!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2062
    :goto_0
    return-void

    .line 1986
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 2057
    const-string v2, "AudioProfileService"

    const-string/jumbo v3, "setStreamVolume with undefind stream type!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2060
    :cond_1
    :goto_1
    const-string v2, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setStreamVolume: profileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", streamType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", volume = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1988
    :pswitch_0
    iget v2, v0, Lcom/yeptelecom/audioprofile/AudioProfileState;->mMediaVolume:I

    if-eq v2, v1, :cond_1

    .line 1991
    invoke-direct {p0, p1, p2, v1}, Lcom/yeptelecom/audioprofile/AudioProfileService;->persistStreamVolumeToDatabase(Ljava/lang/String;II)V

    .line 1992
    iget-object v3, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    monitor-enter v3

    .line 1993
    :try_start_0
    iput v1, v0, Lcom/yeptelecom/audioprofile/AudioProfileState;->mMediaVolume:I

    .line 1994
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1998
    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1999
    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v3, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->media_volume:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1994
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 2005
    :pswitch_1
    iget v2, v0, Lcom/yeptelecom/audioprofile/AudioProfileState;->mRingerVolume:I

    if-eq v2, v1, :cond_1

    .line 2008
    invoke-direct {p0, p1, p2, v1}, Lcom/yeptelecom/audioprofile/AudioProfileService;->persistStreamVolumeToDatabase(Ljava/lang/String;II)V

    .line 2009
    iget-object v3, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    monitor-enter v3

    .line 2010
    :try_start_2
    iput v1, v0, Lcom/yeptelecom/audioprofile/AudioProfileState;->mRingerVolume:I

    .line 2011
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2015
    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2016
    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v3, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ringer_volume:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2011
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 2022
    :pswitch_2
    iget v2, v0, Lcom/yeptelecom/audioprofile/AudioProfileState;->mNotificationVolume:I

    if-eq v2, v1, :cond_1

    .line 2025
    invoke-direct {p0, p1, p2, v1}, Lcom/yeptelecom/audioprofile/AudioProfileService;->persistStreamVolumeToDatabase(Ljava/lang/String;II)V

    .line 2026
    iget-object v3, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    monitor-enter v3

    .line 2027
    :try_start_4
    iput v1, v0, Lcom/yeptelecom/audioprofile/AudioProfileState;->mNotificationVolume:I

    .line 2028
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2032
    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2033
    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v3, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->notification_volume:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 2028
    :catchall_2
    move-exception v2

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v2

    .line 2040
    :pswitch_3
    iget v2, v0, Lcom/yeptelecom/audioprofile/AudioProfileState;->mAlarmVolume:I

    if-eq v2, v1, :cond_1

    .line 2043
    invoke-direct {p0, p1, p2, v1}, Lcom/yeptelecom/audioprofile/AudioProfileService;->persistStreamVolumeToDatabase(Ljava/lang/String;II)V

    .line 2044
    iget-object v3, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    monitor-enter v3

    .line 2045
    :try_start_6
    iput v1, v0, Lcom/yeptelecom/audioprofile/AudioProfileState;->mAlarmVolume:I

    .line 2046
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 2050
    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2051
    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v3, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->alarm_volume:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 2046
    :catchall_3
    move-exception v2

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v2

    .line 1986
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public setVibrationEnabled(Ljava/lang/String;Z)V
    .locals 6
    .parameter "profileKey"
    .parameter "enabled"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2072
    invoke-virtual {p0, p1}, Lcom/yeptelecom/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/yeptelecom/audioprofile/AudioProfileState;

    move-result-object v0

    .line 2073
    .local v0, profileState:Lcom/yeptelecom/audioprofile/AudioProfileState;
    if-nez v0, :cond_1

    .line 2074
    const-string v1, "AudioProfileService"

    const-string/jumbo v2, "setVibrationEnabled profile state not exist!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2109
    :cond_0
    :goto_0
    return-void

    .line 2078
    :cond_1
    iget-boolean v1, v0, Lcom/yeptelecom/audioprofile/AudioProfileState;->mVibrationEnabled:Z

    if-eq v1, p2, :cond_0

    .line 2081
    sget-object v1, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    invoke-static {p1}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2082
    iget-object v4, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v5, "vibrate_in_silent"

    if-eqz p2, :cond_4

    move v1, v2

    :goto_1
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2085
    invoke-virtual {p0, p1}, Lcom/yeptelecom/audioprofile/AudioProfileService;->isActive(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2086
    if-eqz p2, :cond_5

    .line 2087
    iget-object v1, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 2088
    iput v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mRingerMode:I

    .line 2089
    const-string v1, "AudioProfileService"

    const-string/jumbo v2, "setVibrationEnabled true,change RingerMode to VIBRATE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2098
    :cond_2
    :goto_2
    invoke-direct {p0, p1, p2}, Lcom/yeptelecom/audioprofile/AudioProfileService;->persistVibrationToDatabase(Ljava/lang/String;Z)V

    .line 2099
    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    monitor-enter v2

    .line 2100
    :try_start_0
    iput-boolean p2, v0, Lcom/yeptelecom/audioprofile/AudioProfileState;->mVibrationEnabled:Z

    .line 2101
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2103
    invoke-virtual {p0, p1}, Lcom/yeptelecom/audioprofile/AudioProfileService;->isActive(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2104
    invoke-direct {p0}, Lcom/yeptelecom/audioprofile/AudioProfileService;->persistVibrationToSystem()V

    .line 2106
    :cond_3
    const-string v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setVibrationEnabled: profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    move v1, v3

    .line 2082
    goto :goto_1

    .line 2091
    :cond_5
    iget-object v1, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 2092
    iput v3, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mRingerMode:I

    .line 2093
    const-string v1, "AudioProfileService"

    const-string/jumbo v2, "setVibrationEnabled false,change RingerMode to SILENT"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2101
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public syncMediaVolumeToProfile(Ljava/lang/String;I)V
    .locals 3
    .parameter "profileKey"
    .parameter "volume"

    .prologue
    .line 3100
    invoke-virtual {p0, p1}, Lcom/yeptelecom/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/yeptelecom/audioprofile/AudioProfileState;

    move-result-object v0

    iget v0, v0, Lcom/yeptelecom/audioprofile/AudioProfileState;->mMediaVolume:I

    if-eq v0, p2, :cond_0

    .line 3101
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3102
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0, p2}, Lcom/yeptelecom/audioprofile/AudioProfileService;->persistStreamVolumeToDatabase(Ljava/lang/String;II)V

    .line 3103
    invoke-virtual {p0, p1}, Lcom/yeptelecom/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/yeptelecom/audioprofile/AudioProfileState;

    move-result-object v0

    iput p2, v0, Lcom/yeptelecom/audioprofile/AudioProfileState;->mMediaVolume:I

    .line 3104
    const-string v0, "AudioProfileService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "syncMediaVolumeToProfile: profileKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", volume = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3107
    :cond_0
    return-void
.end method

.method public syncRingerVolumeToProfile(Ljava/lang/String;I)V
    .locals 3
    .parameter "profileKey"
    .parameter "volume"

    .prologue
    .line 3076
    invoke-virtual {p0, p1}, Lcom/yeptelecom/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/yeptelecom/audioprofile/AudioProfileState;

    move-result-object v0

    iget v0, v0, Lcom/yeptelecom/audioprofile/AudioProfileState;->mRingerVolume:I

    if-eq v0, p2, :cond_0

    .line 3077
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3078
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3079
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0, p2}, Lcom/yeptelecom/audioprofile/AudioProfileService;->persistStreamVolumeToDatabase(Ljava/lang/String;II)V

    .line 3080
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0, p2}, Lcom/yeptelecom/audioprofile/AudioProfileService;->persistStreamVolumeToDatabase(Ljava/lang/String;II)V

    .line 3081
    invoke-virtual {p0, p1}, Lcom/yeptelecom/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/yeptelecom/audioprofile/AudioProfileState;

    move-result-object v0

    iput p2, v0, Lcom/yeptelecom/audioprofile/AudioProfileState;->mRingerVolume:I

    .line 3082
    invoke-virtual {p0, p1}, Lcom/yeptelecom/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/yeptelecom/audioprofile/AudioProfileState;

    move-result-object v0

    iput p2, v0, Lcom/yeptelecom/audioprofile/AudioProfileState;->mNotificationVolume:I

    .line 3083
    const-string v0, "AudioProfileService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "syncRingerVolumeToProfile: profileKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", volume = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3086
    :cond_0
    return-void
.end method
