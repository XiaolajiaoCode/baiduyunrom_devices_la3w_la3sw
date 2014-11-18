.class public Lcom/yeptelecom/common/audioprofile/AudioProfileListener;
.super Ljava/lang/Object;
.source "AudioProfileListener.java"


# static fields
.field public static final LISTEN_AUDIOPROFILE_CHANGEG:I = 0x1

.field public static final LISTEN_MEDIA_VOLUME_CHANGED:I = 0x8

.field public static final LISTEN_NONE:I = 0x0

.field public static final LISTEN_RINGERMODE_CHANGED:I = 0x2

.field public static final LISTEN_RINGER_VOLUME_CHANGED:I = 0x4

.field private static final TAG:Ljava/lang/String; = "AudioProfileListener"


# instance fields
.field callback:Lcom/yeptelecom/common/audioprofile/IAudioProfileListener;

.field mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 97
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 147
    new-instance v0, Lcom/yeptelecom/common/audioprofile/AudioProfileListener$1;

    invoke-direct {v0, p0}, Lcom/yeptelecom/common/audioprofile/AudioProfileListener$1;-><init>(Lcom/yeptelecom/common/audioprofile/AudioProfileListener;)V

    iput-object v0, p0, Lcom/yeptelecom/common/audioprofile/AudioProfileListener;->callback:Lcom/yeptelecom/common/audioprofile/IAudioProfileListener;

    .line 167
    new-instance v0, Lcom/yeptelecom/common/audioprofile/AudioProfileListener$2;

    invoke-direct {v0, p0}, Lcom/yeptelecom/common/audioprofile/AudioProfileListener$2;-><init>(Lcom/yeptelecom/common/audioprofile/AudioProfileListener;)V

    iput-object v0, p0, Lcom/yeptelecom/common/audioprofile/AudioProfileListener;->mHandler:Landroid/os/Handler;

    .line 98
    return-void
.end method


# virtual methods
.method public getCallback()Lcom/yeptelecom/common/audioprofile/IAudioProfileListener;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/yeptelecom/common/audioprofile/AudioProfileListener;->callback:Lcom/yeptelecom/common/audioprofile/IAudioProfileListener;

    return-object v0
.end method

.method public onAudioProfileChanged(Ljava/lang/String;)V
    .locals 0
    .parameter "profileKey"

    .prologue
    .line 111
    return-void
.end method

.method public onMediaVolumeChanged(IILjava/lang/String;)V
    .locals 0
    .parameter "oldVolume"
    .parameter "newVolume"
    .parameter "extra"

    .prologue
    .line 141
    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 0
    .parameter "ringerMode"

    .prologue
    .line 120
    return-void
.end method

.method public onRingerVolumeChanged(IILjava/lang/String;)V
    .locals 0
    .parameter "oldVolume"
    .parameter "newVolume"
    .parameter "extra"

    .prologue
    .line 131
    return-void
.end method
