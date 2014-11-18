.class Lcom/yeptelecom/audioprofile/AudioProfileService$7;
.super Landroid/content/BroadcastReceiver;
.source "AudioProfileService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yeptelecom/audioprofile/AudioProfileService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yeptelecom/audioprofile/AudioProfileService;


# direct methods
.method constructor <init>(Lcom/yeptelecom/audioprofile/AudioProfileService;)V
    .locals 0
    .parameter

    .prologue
    .line 573
    iput-object p1, p0, Lcom/yeptelecom/audioprofile/AudioProfileService$7;->this$0:Lcom/yeptelecom/audioprofile/AudioProfileService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 577
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 578
    .local v0, action:Ljava/lang/String;
    const-string v4, "AudioProfileService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mUpgradeReceiver start update profile: action = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    iget-object v4, p0, Lcom/yeptelecom/audioprofile/AudioProfileService$7;->this$0:Lcom/yeptelecom/audioprofile/AudioProfileService;

    #calls: Lcom/yeptelecom/audioprofile/AudioProfileService;->readDefaultRingtones()V
    invoke-static {v4}, Lcom/yeptelecom/audioprofile/AudioProfileService;->access$900(Lcom/yeptelecom/audioprofile/AudioProfileService;)V

    .line 582
    const-string v4, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 583
    iget-object v4, p0, Lcom/yeptelecom/audioprofile/AudioProfileService$7;->this$0:Lcom/yeptelecom/audioprofile/AudioProfileService;

    #getter for: Lcom/yeptelecom/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/yeptelecom/audioprofile/AudioProfileService;->access$600(Lcom/yeptelecom/audioprofile/AudioProfileService;)Ljava/util/HashMap;

    move-result-object v5

    monitor-enter v5

    .line 584
    :try_start_0
    iget-object v4, p0, Lcom/yeptelecom/audioprofile/AudioProfileService$7;->this$0:Lcom/yeptelecom/audioprofile/AudioProfileService;

    #getter for: Lcom/yeptelecom/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;
    invoke-static {v4}, Lcom/yeptelecom/audioprofile/AudioProfileService;->access$1000(Lcom/yeptelecom/audioprofile/AudioProfileService;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 585
    .local v2, profileKey:Ljava/lang/String;
    iget-object v4, p0, Lcom/yeptelecom/audioprofile/AudioProfileService$7;->this$0:Lcom/yeptelecom/audioprofile/AudioProfileService;

    #getter for: Lcom/yeptelecom/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/yeptelecom/audioprofile/AudioProfileService;->access$600(Lcom/yeptelecom/audioprofile/AudioProfileService;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yeptelecom/audioprofile/AudioProfileState;

    .line 587
    .local v3, profileState:Lcom/yeptelecom/audioprofile/AudioProfileState;
    iget-object v4, v3, Lcom/yeptelecom/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    if-nez v4, :cond_1

    .line 588
    iget-object v4, p0, Lcom/yeptelecom/audioprofile/AudioProfileService$7;->this$0:Lcom/yeptelecom/audioprofile/AudioProfileService;

    #getter for: Lcom/yeptelecom/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;
    invoke-static {v4}, Lcom/yeptelecom/audioprofile/AudioProfileService;->access$1100(Lcom/yeptelecom/audioprofile/AudioProfileService;)Ljava/util/List;

    move-result-object v4

    sget-object v6, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ringer_stream:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v6}, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v6

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    iput-object v4, v3, Lcom/yeptelecom/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    .line 592
    :cond_1
    iget-object v4, v3, Lcom/yeptelecom/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    if-nez v4, :cond_2

    .line 593
    iget-object v4, p0, Lcom/yeptelecom/audioprofile/AudioProfileService$7;->this$0:Lcom/yeptelecom/audioprofile/AudioProfileService;

    #getter for: Lcom/yeptelecom/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;
    invoke-static {v4}, Lcom/yeptelecom/audioprofile/AudioProfileService;->access$1100(Lcom/yeptelecom/audioprofile/AudioProfileService;)Ljava/util/List;

    move-result-object v4

    sget-object v6, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->notification_stream:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v6}, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v6

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    iput-object v4, v3, Lcom/yeptelecom/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    .line 597
    :cond_2
    iget-object v4, v3, Lcom/yeptelecom/audioprofile/AudioProfileState;->mRingerStream2:Landroid/net/Uri;

    if-nez v4, :cond_0

    .line 598
    iget-object v4, p0, Lcom/yeptelecom/audioprofile/AudioProfileService$7;->this$0:Lcom/yeptelecom/audioprofile/AudioProfileService;

    #getter for: Lcom/yeptelecom/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;
    invoke-static {v4}, Lcom/yeptelecom/audioprofile/AudioProfileService;->access$1100(Lcom/yeptelecom/audioprofile/AudioProfileService;)Ljava/util/List;

    move-result-object v4

    sget-object v6, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ringer_Stream_2:Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v6}, Lcom/yeptelecom/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v6

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    iput-object v4, v3, Lcom/yeptelecom/audioprofile/AudioProfileState;->mRingerStream2:Landroid/net/Uri;

    goto :goto_0

    .line 602
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #profileKey:Ljava/lang/String;
    .end local v3           #profileState:Lcom/yeptelecom/audioprofile/AudioProfileState;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_3
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 604
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_4
    iget-object v4, p0, Lcom/yeptelecom/audioprofile/AudioProfileService$7;->this$0:Lcom/yeptelecom/audioprofile/AudioProfileService;

    #getter for: Lcom/yeptelecom/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/yeptelecom/audioprofile/AudioProfileService;->access$1300(Lcom/yeptelecom/audioprofile/AudioProfileService;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/yeptelecom/audioprofile/AudioProfileService$7;->this$0:Lcom/yeptelecom/audioprofile/AudioProfileService;

    #getter for: Lcom/yeptelecom/audioprofile/AudioProfileService;->mUpgradeReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v5}, Lcom/yeptelecom/audioprofile/AudioProfileService;->access$1200(Lcom/yeptelecom/audioprofile/AudioProfileService;)Landroid/content/BroadcastReceiver;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 605
    const-string v4, "AudioProfileService"

    const-string/jumbo v5, "mUpgradeReceiver end unregister receiver!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    return-void
.end method
