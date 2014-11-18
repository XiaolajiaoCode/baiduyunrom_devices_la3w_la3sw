.class Lcom/yeptelecom/audioprofile/AudioProfileService$6;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/yeptelecom/audioprofile/AudioProfileService;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 502
    iput-object p1, p0, Lcom/yeptelecom/audioprofile/AudioProfileService$6;->this$0:Lcom/yeptelecom/audioprofile/AudioProfileService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 11
    .parameter "selfChange"

    .prologue
    .line 505
    iget-object v7, p0, Lcom/yeptelecom/audioprofile/AudioProfileService$6;->this$0:Lcom/yeptelecom/audioprofile/AudioProfileService;

    #getter for: Lcom/yeptelecom/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;
    invoke-static {v7}, Lcom/yeptelecom/audioprofile/AudioProfileService;->access$300(Lcom/yeptelecom/audioprofile/AudioProfileService;)Ljava/lang/String;

    move-result-object v8

    monitor-enter v8

    .line 506
    :try_start_0
    iget-object v7, p0, Lcom/yeptelecom/audioprofile/AudioProfileService$6;->this$0:Lcom/yeptelecom/audioprofile/AudioProfileService;

    #getter for: Lcom/yeptelecom/audioprofile/AudioProfileService;->mExt:Lcom/yeptelecom/common/audioprofile/IAudioProfileExtension;
    invoke-static {v7}, Lcom/yeptelecom/audioprofile/AudioProfileService;->access$200(Lcom/yeptelecom/audioprofile/AudioProfileService;)Lcom/yeptelecom/common/audioprofile/IAudioProfileExtension;

    move-result-object v7

    invoke-interface {v7, p1}, Lcom/yeptelecom/common/audioprofile/IAudioProfileExtension;->onNotificationChange(Z)Z

    move-result v7

    if-eqz v7, :cond_0

    monitor-exit v8

    .line 566
    :goto_0
    return-void

    .line 508
    :cond_0
    iget-object v7, p0, Lcom/yeptelecom/audioprofile/AudioProfileService$6;->this$0:Lcom/yeptelecom/audioprofile/AudioProfileService;

    #getter for: Lcom/yeptelecom/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;
    invoke-static {v7}, Lcom/yeptelecom/audioprofile/AudioProfileService;->access$300(Lcom/yeptelecom/audioprofile/AudioProfileService;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    move-result-object v0

    .line 509
    .local v0, activeScenario:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;
    iget-object v7, p0, Lcom/yeptelecom/audioprofile/AudioProfileService$6;->this$0:Lcom/yeptelecom/audioprofile/AudioProfileService;

    iget-object v9, p0, Lcom/yeptelecom/audioprofile/AudioProfileService$6;->this$0:Lcom/yeptelecom/audioprofile/AudioProfileService;

    #getter for: Lcom/yeptelecom/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;
    invoke-static {v9}, Lcom/yeptelecom/audioprofile/AudioProfileService;->access$300(Lcom/yeptelecom/audioprofile/AudioProfileService;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/yeptelecom/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/yeptelecom/audioprofile/AudioProfileState;

    move-result-object v1

    .line 510
    .local v1, activeState:Lcom/yeptelecom/audioprofile/AudioProfileState;
    iget-object v7, p0, Lcom/yeptelecom/audioprofile/AudioProfileService$6;->this$0:Lcom/yeptelecom/audioprofile/AudioProfileService;

    #getter for: Lcom/yeptelecom/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v7}, Lcom/yeptelecom/audioprofile/AudioProfileService;->access$800(Lcom/yeptelecom/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v9, "notification_sound"

    invoke-static {v7, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 512
    .local v6, uriString:Ljava/lang/String;
    if-nez v6, :cond_3

    sget-object v5, Lcom/yeptelecom/audioprofile/AudioProfileService;->SILENT_NOTIFICATION_URI:Landroid/net/Uri;

    .line 515
    .local v5, systemUri:Landroid/net/Uri;
    :goto_1
    iget-object v7, v1, Lcom/yeptelecom/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    if-nez v7, :cond_1

    if-nez v5, :cond_2

    :cond_1
    iget-object v7, v1, Lcom/yeptelecom/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    if-eqz v7, :cond_4

    iget-object v7, v1, Lcom/yeptelecom/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    invoke-virtual {v7, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    :cond_2
    const/4 v3, 0x1

    .line 519
    .local v3, isPassiveChange:Z
    :goto_2
    sget-object v7, Lcom/yeptelecom/audioprofile/AudioProfileService$8;->$SwitchMap$com$yeptelecom$audioprofile$AudioProfileManager$Scenario:[I

    invoke-virtual {v0}, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v9

    aget v7, v7, v9

    packed-switch v7, :pswitch_data_0

    .line 565
    :goto_3
    monitor-exit v8

    goto :goto_0

    .end local v0           #activeScenario:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;
    .end local v1           #activeState:Lcom/yeptelecom/audioprofile/AudioProfileState;
    .end local v3           #isPassiveChange:Z
    .end local v5           #systemUri:Landroid/net/Uri;
    .end local v6           #uriString:Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 512
    .restart local v0       #activeScenario:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;
    .restart local v1       #activeState:Lcom/yeptelecom/audioprofile/AudioProfileState;
    .restart local v6       #uriString:Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    goto :goto_1

    .line 515
    .restart local v5       #systemUri:Landroid/net/Uri;
    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    .line 526
    .restart local v3       #isPassiveChange:Z
    :pswitch_0
    if-eqz v3, :cond_5

    .line 527
    iget-object v7, p0, Lcom/yeptelecom/audioprofile/AudioProfileService$6;->this$0:Lcom/yeptelecom/audioprofile/AudioProfileService;

    #getter for: Lcom/yeptelecom/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;
    invoke-static {v7}, Lcom/yeptelecom/audioprofile/AudioProfileService;->access$400(Lcom/yeptelecom/audioprofile/AudioProfileService;)Ljava/util/List;

    move-result-object v7

    sget-object v9, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v9}, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v9

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 529
    .local v2, generalKey:Ljava/lang/String;
    iget-object v7, p0, Lcom/yeptelecom/audioprofile/AudioProfileService$6;->this$0:Lcom/yeptelecom/audioprofile/AudioProfileService;

    #getter for: Lcom/yeptelecom/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;
    invoke-static {v7}, Lcom/yeptelecom/audioprofile/AudioProfileService;->access$400(Lcom/yeptelecom/audioprofile/AudioProfileService;)Ljava/util/List;

    move-result-object v7

    sget-object v9, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->OUTDOOR:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v9}, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v9

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 531
    .local v4, outdoorKey:Ljava/lang/String;
    iget-object v7, p0, Lcom/yeptelecom/audioprofile/AudioProfileService$6;->this$0:Lcom/yeptelecom/audioprofile/AudioProfileService;

    invoke-virtual {v7, v2}, Lcom/yeptelecom/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/yeptelecom/audioprofile/AudioProfileState;

    move-result-object v7

    iput-object v5, v7, Lcom/yeptelecom/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    .line 532
    iget-object v7, p0, Lcom/yeptelecom/audioprofile/AudioProfileService$6;->this$0:Lcom/yeptelecom/audioprofile/AudioProfileService;

    invoke-virtual {v7, v4}, Lcom/yeptelecom/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/yeptelecom/audioprofile/AudioProfileState;

    move-result-object v7

    iput-object v5, v7, Lcom/yeptelecom/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    .line 533
    iget-object v7, p0, Lcom/yeptelecom/audioprofile/AudioProfileService$6;->this$0:Lcom/yeptelecom/audioprofile/AudioProfileService;

    const/4 v9, 0x2

    invoke-virtual {v7, v2, v9, v5}, Lcom/yeptelecom/audioprofile/AudioProfileService;->persistRingtoneUriToDatabase(Ljava/lang/String;ILandroid/net/Uri;)V

    .line 535
    iget-object v7, p0, Lcom/yeptelecom/audioprofile/AudioProfileService$6;->this$0:Lcom/yeptelecom/audioprofile/AudioProfileService;

    const/4 v9, 0x2

    invoke-virtual {v7, v4, v9, v5}, Lcom/yeptelecom/audioprofile/AudioProfileService;->persistRingtoneUriToDatabase(Ljava/lang/String;ILandroid/net/Uri;)V

    .line 537
    const-string v7, "AudioProfileService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Notification changed by other app in non-silent profile, synchronize to active profile: new uri = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 541
    .end local v2           #generalKey:Ljava/lang/String;
    .end local v4           #outdoorKey:Ljava/lang/String;
    :cond_5
    const-string v7, "AudioProfileService"

    const-string v9, "Notification changed by itself, do nothing!"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 549
    :pswitch_1
    if-eqz v3, :cond_6

    .line 550
    iput-object v5, v1, Lcom/yeptelecom/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    .line 551
    iget-object v7, p0, Lcom/yeptelecom/audioprofile/AudioProfileService$6;->this$0:Lcom/yeptelecom/audioprofile/AudioProfileService;

    iget-object v9, p0, Lcom/yeptelecom/audioprofile/AudioProfileService$6;->this$0:Lcom/yeptelecom/audioprofile/AudioProfileService;

    #getter for: Lcom/yeptelecom/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;
    invoke-static {v9}, Lcom/yeptelecom/audioprofile/AudioProfileService;->access$300(Lcom/yeptelecom/audioprofile/AudioProfileService;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {v7, v9, v10, v5}, Lcom/yeptelecom/audioprofile/AudioProfileService;->persistRingtoneUriToDatabase(Ljava/lang/String;ILandroid/net/Uri;)V

    .line 553
    const-string v7, "AudioProfileService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Notification changed by other app in non-silent profile, synchronize to active profile: new uri = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 557
    :cond_6
    const-string v7, "AudioProfileService"

    const-string v9, "Notification changed by itself, do nothing!"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    .line 519
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
