.class public interface abstract Lcom/yeptelecom/common/audioprofile/IAudioProfileExtension;
.super Ljava/lang/Object;
.source "IAudioProfileExtension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yeptelecom/common/audioprofile/IAudioProfileExtension$IDefaultProfileStatesGetter;,
        Lcom/yeptelecom/common/audioprofile/IAudioProfileExtension$IActiveProfileChangeInfo;
    }
.end annotation


# virtual methods
.method public abstract getActiveProfileChangeInfo(ZLjava/lang/String;Ljava/lang/String;Z)Lcom/yeptelecom/common/audioprofile/IAudioProfileExtension$IActiveProfileChangeInfo;
.end method

.method public abstract init(Lcom/yeptelecom/common/audioprofile/IAudioProfileService;Landroid/content/Context;)V
.end method

.method public abstract onActiveProfileChange(ZLjava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract onMediaVolumeChanged(IILjava/lang/String;)Z
.end method

.method public abstract onNotificationChange(Z)Z
.end method

.method public abstract onRingerModeChanged(I)Z
.end method

.method public abstract onRingerVolumeChanged(IILjava/lang/String;)Z
.end method

.method public abstract onRingtoneChange(Z)Z
.end method

.method public abstract persistStreamVolumeToSystem(I)Z
.end method

.method public abstract shouldCheckDefaultProfiles()Z
.end method

.method public abstract shouldSyncGeneralRingtoneToOutdoor()Z
.end method
