.class Lcom/yeptelecom/audioprofile/AudioProfileService$OverrideSystemThread;
.super Ljava/lang/Thread;
.source "AudioProfileService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yeptelecom/audioprofile/AudioProfileService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverrideSystemThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yeptelecom/audioprofile/AudioProfileService;


# direct methods
.method constructor <init>(Lcom/yeptelecom/audioprofile/AudioProfileService;)V
    .locals 1
    .parameter

    .prologue
    .line 3251
    iput-object p1, p0, Lcom/yeptelecom/audioprofile/AudioProfileService$OverrideSystemThread;->this$0:Lcom/yeptelecom/audioprofile/AudioProfileService;

    .line 3252
    const-string v0, "AudioProfileService"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 3253
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 3258
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 3260
    iget-object v1, p0, Lcom/yeptelecom/audioprofile/AudioProfileService$OverrideSystemThread;->this$0:Lcom/yeptelecom/audioprofile/AudioProfileService;

    monitor-enter v1

    .line 3261
    :try_start_0
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/AudioProfileService$OverrideSystemThread;->this$0:Lcom/yeptelecom/audioprofile/AudioProfileService;

    new-instance v2, Lcom/yeptelecom/audioprofile/AudioProfileService$AudioProfileHandler;

    iget-object v3, p0, Lcom/yeptelecom/audioprofile/AudioProfileService$OverrideSystemThread;->this$0:Lcom/yeptelecom/audioprofile/AudioProfileService;

    invoke-direct {v2, v3}, Lcom/yeptelecom/audioprofile/AudioProfileService$AudioProfileHandler;-><init>(Lcom/yeptelecom/audioprofile/AudioProfileService;)V

    #setter for: Lcom/yeptelecom/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;
    invoke-static {v0, v2}, Lcom/yeptelecom/audioprofile/AudioProfileService;->access$1502(Lcom/yeptelecom/audioprofile/AudioProfileService;Landroid/os/Handler;)Landroid/os/Handler;

    .line 3264
    iget-object v0, p0, Lcom/yeptelecom/audioprofile/AudioProfileService$OverrideSystemThread;->this$0:Lcom/yeptelecom/audioprofile/AudioProfileService;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 3265
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3268
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 3269
    return-void

    .line 3265
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
