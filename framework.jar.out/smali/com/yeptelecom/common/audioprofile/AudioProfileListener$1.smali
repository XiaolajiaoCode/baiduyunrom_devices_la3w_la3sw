.class Lcom/yeptelecom/common/audioprofile/AudioProfileListener$1;
.super Lcom/yeptelecom/common/audioprofile/IAudioProfileListener$Stub;
.source "AudioProfileListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yeptelecom/common/audioprofile/AudioProfileListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yeptelecom/common/audioprofile/AudioProfileListener;


# direct methods
.method constructor <init>(Lcom/yeptelecom/common/audioprofile/AudioProfileListener;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/yeptelecom/common/audioprofile/AudioProfileListener$1;->this$0:Lcom/yeptelecom/common/audioprofile/AudioProfileListener;

    invoke-direct {p0}, Lcom/yeptelecom/common/audioprofile/IAudioProfileListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioProfileChanged(Ljava/lang/String;)V
    .locals 3
    .parameter "profileKey"

    .prologue
    const/4 v2, 0x0

    .line 149
    iget-object v0, p0, Lcom/yeptelecom/common/audioprofile/AudioProfileListener$1;->this$0:Lcom/yeptelecom/common/audioprofile/AudioProfileListener;

    iget-object v0, v0, Lcom/yeptelecom/common/audioprofile/AudioProfileListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {v0, v1, v2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 150
    return-void
.end method

.method public onMediaVolumeChanged(IILjava/lang/String;)V
    .locals 2
    .parameter "oldVolume"
    .parameter "newVolume"
    .parameter "extra"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/yeptelecom/common/audioprofile/AudioProfileListener$1;->this$0:Lcom/yeptelecom/common/audioprofile/AudioProfileListener;

    iget-object v0, v0, Lcom/yeptelecom/common/audioprofile/AudioProfileListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-static {v0, v1, p1, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 164
    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 4
    .parameter "ringerMode"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/yeptelecom/common/audioprofile/AudioProfileListener$1;->this$0:Lcom/yeptelecom/common/audioprofile/AudioProfileListener;

    iget-object v0, v0, Lcom/yeptelecom/common/audioprofile/AudioProfileListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, p1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 154
    return-void
.end method

.method public onRingerVolumeChanged(IILjava/lang/String;)V
    .locals 2
    .parameter "oldVolume"
    .parameter "newVolume"
    .parameter "extra"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/yeptelecom/common/audioprofile/AudioProfileListener$1;->this$0:Lcom/yeptelecom/common/audioprofile/AudioProfileListener;

    iget-object v0, v0, Lcom/yeptelecom/common/audioprofile/AudioProfileListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-static {v0, v1, p1, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 159
    return-void
.end method
