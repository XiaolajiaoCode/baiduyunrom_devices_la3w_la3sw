.class Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager$MyHandler;
.super Landroid/os/Handler;
.source "UsimPhoneBookInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# static fields
.field private static final EVENT_GET_SIZE_DONE:I = 0x2

.field private static final EVENT_PBR_LOAD_DONE:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager$MyHandler;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager;

    .line 50
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 51
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 57
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 91
    :goto_0
    return-void

    .line 59
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 60
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager$MyHandler;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_PBR_LOAD_DONE ar.result == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 61
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 62
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager$MyHandler;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager;

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    #calls: Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager;->createPbrFile(Ljava/util/ArrayList;)V
    invoke-static {v3, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager;->access$000(Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager;Ljava/util/ArrayList;)V

    .line 64
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager$MyHandler;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager;->access$100(Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 65
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager$MyHandler;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager;->access$100(Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 66
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 71
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 72
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    .line 73
    const/4 v2, 0x3

    new-array v1, v2, [I

    .line 74
    .local v1, tempRecordSize:[I
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v1, v2

    check-cast v1, [I

    .line 78
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager$MyHandler;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GET_RECORD_SIZE Size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " total "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " #record "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 81
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager$MyHandler;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager;->recordSize:[I

    aget v3, v2, v5

    aget v4, v1, v5

    add-int/2addr v3, v4

    aput v3, v2, v5

    .line 82
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager$MyHandler;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager;->recordSize:[I

    aget v3, v2, v6

    aget v4, v1, v6

    add-int/2addr v3, v4

    aput v3, v2, v6

    .line 83
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager$MyHandler;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager;->recordSize:[I

    aget v3, v2, v7

    aget v4, v1, v7

    add-int/2addr v3, v4

    aput v3, v2, v7

    .line 85
    .end local v1           #tempRecordSize:[I
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager$MyHandler;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager;->access$100(Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 86
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager$MyHandler;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager;

    #getter for: Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager;->access$100(Lcom/android/internal/telephony/gsm/UsimPhoneBookInterfaceManager;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 87
    monitor-exit v3

    goto/16 :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2

    .line 57
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
