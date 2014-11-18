.class Lcom/yeptelecom/audioprofile/AudioProfileService$1;
.super Lcom/yeptelecom/common/audioprofile/AudioProfileListener;
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
    .line 164
    iput-object p1, p0, Lcom/yeptelecom/audioprofile/AudioProfileService$1;->this$0:Lcom/yeptelecom/audioprofile/AudioProfileService;

    invoke-direct {p0}, Lcom/yeptelecom/common/audioprofile/AudioProfileListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onRingerModeChanged(I)V
    .locals 6
    .parameter "newRingerMode"

    .prologue
    const/4 v5, 0x0

    .line 167
    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileService$1;->this$0:Lcom/yeptelecom/audioprofile/AudioProfileService;

    #getter for: Lcom/yeptelecom/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/yeptelecom/audioprofile/AudioProfileService;->access$000(Lcom/yeptelecom/audioprofile/AudioProfileService;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 168
    .local v1, ringerMode:I
    if-eq v1, p1, :cond_0

    .line 169
    const-string v2, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onRingerModeChanged: ringermode is not latest: new = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", latest = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_0
    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileService$1;->this$0:Lcom/yeptelecom/audioprofile/AudioProfileService;

    #getter for: Lcom/yeptelecom/audioprofile/AudioProfileService;->mRingerMode:I
    invoke-static {v2}, Lcom/yeptelecom/audioprofile/AudioProfileService;->access$100(Lcom/yeptelecom/audioprofile/AudioProfileService;)I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 173
    const-string v2, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onRingerModeChanged with same ringerMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_1
    :goto_0
    return-void

    .line 175
    :cond_2
    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileService$1;->this$0:Lcom/yeptelecom/audioprofile/AudioProfileService;

    #setter for: Lcom/yeptelecom/audioprofile/AudioProfileService;->mRingerMode:I
    invoke-static {v2, v1}, Lcom/yeptelecom/audioprofile/AudioProfileService;->access$102(Lcom/yeptelecom/audioprofile/AudioProfileService;I)I

    .line 178
    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileService$1;->this$0:Lcom/yeptelecom/audioprofile/AudioProfileService;

    #getter for: Lcom/yeptelecom/audioprofile/AudioProfileService;->mExt:Lcom/yeptelecom/common/audioprofile/IAudioProfileExtension;
    invoke-static {v2}, Lcom/yeptelecom/audioprofile/AudioProfileService;->access$200(Lcom/yeptelecom/audioprofile/AudioProfileService;)Lcom/yeptelecom/common/audioprofile/IAudioProfileExtension;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/yeptelecom/common/audioprofile/IAudioProfileExtension;->onRingerModeChanged(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 180
    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileService$1;->this$0:Lcom/yeptelecom/audioprofile/AudioProfileService;

    #getter for: Lcom/yeptelecom/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;
    invoke-static {v2}, Lcom/yeptelecom/audioprofile/AudioProfileService;->access$300(Lcom/yeptelecom/audioprofile/AudioProfileService;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yeptelecom/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    move-result-object v0

    .line 181
    .local v0, activeScenario:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;
    const-string v2, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onRingerModeChanged: ringermode changed by other app, change profile! ringerMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    packed-switch v1, :pswitch_data_0

    .line 225
    const-string v2, "AudioProfileService"

    const-string v3, "CMCC: undefined RingerMode!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 232
    :cond_4
    invoke-static {}, Lcom/yeptelecom/audioprofile/AudioProfileService;->access$500()Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 188
    :pswitch_0
    sget-object v2, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v2, v0}, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 189
    const-string v2, "AudioProfileService"

    const-string v3, "RingerMode change to SILENT, change profile to silent"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v3, p0, Lcom/yeptelecom/audioprofile/AudioProfileService$1;->this$0:Lcom/yeptelecom/audioprofile/AudioProfileService;

    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileService$1;->this$0:Lcom/yeptelecom/audioprofile/AudioProfileService;

    #getter for: Lcom/yeptelecom/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;
    invoke-static {v2}, Lcom/yeptelecom/audioprofile/AudioProfileService;->access$400(Lcom/yeptelecom/audioprofile/AudioProfileService;)Ljava/util/List;

    move-result-object v2

    sget-object v4, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v4}, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v4

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2, v5}, Lcom/yeptelecom/audioprofile/AudioProfileService;->setActiveProfile(Ljava/lang/String;Z)V

    goto :goto_1

    .line 198
    :pswitch_1
    sget-object v2, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->MEETING:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v2, v0}, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 199
    const-string v2, "AudioProfileService"

    const-string v3, "RingerMode change to VIBRATE, change profile to meeting!"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v3, p0, Lcom/yeptelecom/audioprofile/AudioProfileService$1;->this$0:Lcom/yeptelecom/audioprofile/AudioProfileService;

    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileService$1;->this$0:Lcom/yeptelecom/audioprofile/AudioProfileService;

    #getter for: Lcom/yeptelecom/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;
    invoke-static {v2}, Lcom/yeptelecom/audioprofile/AudioProfileService;->access$400(Lcom/yeptelecom/audioprofile/AudioProfileService;)Ljava/util/List;

    move-result-object v2

    sget-object v4, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->MEETING:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v4}, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v4

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2, v5}, Lcom/yeptelecom/audioprofile/AudioProfileService;->setActiveProfile(Ljava/lang/String;Z)V

    goto :goto_1

    .line 209
    :pswitch_2
    sget-object v2, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v2, v0}, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 210
    const-string v2, "AudioProfileService"

    const-string v3, "RingerMode change to NORMAL, change profile to last active profile!"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v3, p0, Lcom/yeptelecom/audioprofile/AudioProfileService$1;->this$0:Lcom/yeptelecom/audioprofile/AudioProfileService;

    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileService$1;->this$0:Lcom/yeptelecom/audioprofile/AudioProfileService;

    #getter for: Lcom/yeptelecom/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;
    invoke-static {v2}, Lcom/yeptelecom/audioprofile/AudioProfileService;->access$400(Lcom/yeptelecom/audioprofile/AudioProfileService;)Ljava/util/List;

    move-result-object v2

    sget-object v4, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v4}, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v4

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2, v5}, Lcom/yeptelecom/audioprofile/AudioProfileService;->setActiveProfile(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 218
    :pswitch_3
    sget-object v2, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->OUTDOOR:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v2, v0}, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 219
    const-string v2, "AudioProfileService"

    const-string v3, "RingerMode change to OUTDOOR, change profile to last active profile!"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v3, p0, Lcom/yeptelecom/audioprofile/AudioProfileService$1;->this$0:Lcom/yeptelecom/audioprofile/AudioProfileService;

    iget-object v2, p0, Lcom/yeptelecom/audioprofile/AudioProfileService$1;->this$0:Lcom/yeptelecom/audioprofile/AudioProfileService;

    #getter for: Lcom/yeptelecom/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;
    invoke-static {v2}, Lcom/yeptelecom/audioprofile/AudioProfileService;->access$400(Lcom/yeptelecom/audioprofile/AudioProfileService;)Ljava/util/List;

    move-result-object v2

    sget-object v4, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->OUTDOOR:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v4}, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v4

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2, v5}, Lcom/yeptelecom/audioprofile/AudioProfileService;->setActiveProfile(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 234
    :cond_5
    invoke-static {}, Lcom/yeptelecom/audioprofile/AudioProfileService;->access$500()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 184
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
