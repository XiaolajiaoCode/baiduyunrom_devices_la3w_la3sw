.class public Landroid/media/dolby/DolbyMobileAudioEffectClient;
.super Ljava/lang/Object;
.source "DolbyMobileAudioEffectClient.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DolbyMobileAudioEffectClient"


# instance fields
.field private mActivityCallback:Landroid/media/dolby/DolbyMobileClientCallbacks;

.field private mCallback:Landroid/media/dolby/IDolbyMobileServiceCallbacks;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v0, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    .line 43
    iput-object v0, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mActivityCallback:Landroid/media/dolby/DolbyMobileClientCallbacks;

    .line 130
    new-instance v0, Landroid/media/dolby/DolbyMobileAudioEffectClient$1;

    invoke-direct {v0, p0}, Landroid/media/dolby/DolbyMobileAudioEffectClient$1;-><init>(Landroid/media/dolby/DolbyMobileAudioEffectClient;)V

    iput-object v0, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mConnection:Landroid/content/ServiceConnection;

    .line 175
    new-instance v0, Landroid/media/dolby/DolbyMobileAudioEffectClient$2;

    invoke-direct {v0, p0}, Landroid/media/dolby/DolbyMobileAudioEffectClient$2;-><init>(Landroid/media/dolby/DolbyMobileAudioEffectClient;)V

    iput-object v0, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mCallback:Landroid/media/dolby/IDolbyMobileServiceCallbacks;

    .line 202
    new-instance v0, Landroid/media/dolby/DolbyMobileAudioEffectClient$3;

    invoke-direct {v0, p0}, Landroid/media/dolby/DolbyMobileAudioEffectClient$3;-><init>(Landroid/media/dolby/DolbyMobileAudioEffectClient;)V

    iput-object v0, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Landroid/media/dolby/DolbyMobileAudioEffectClient;)Landroid/media/dolby/IDolbyMobileSystemInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    return-object v0
.end method

.method static synthetic access$002(Landroid/media/dolby/DolbyMobileAudioEffectClient;Landroid/media/dolby/IDolbyMobileSystemInterface;)Landroid/media/dolby/IDolbyMobileSystemInterface;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    return-object p1
.end method

.method static synthetic access$100(Landroid/media/dolby/DolbyMobileAudioEffectClient;)Landroid/media/dolby/IDolbyMobileServiceCallbacks;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mCallback:Landroid/media/dolby/IDolbyMobileServiceCallbacks;

    return-object v0
.end method

.method static synthetic access$200(Landroid/media/dolby/DolbyMobileAudioEffectClient;)Landroid/media/dolby/DolbyMobileClientCallbacks;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mActivityCallback:Landroid/media/dolby/DolbyMobileClientCallbacks;

    return-object v0
.end method

.method static synthetic access$300(Landroid/media/dolby/DolbyMobileAudioEffectClient;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public bindToRemoteRunningService(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "callerIntent"

    .prologue
    .line 69
    const-string v6, "DolbyMobileAudioEffectClient"

    const-string v7, "bindToRemoteRunningService()"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const/4 v0, 0x0

    .line 73
    .local v0, audioSessionId:I
    new-instance v2, Landroid/content/Intent;

    const-class v6, Landroid/media/dolby/IDolbyMobileSystemInterface;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 76
    .local v2, bindIntent:Landroid/content/Intent;
    if-eqz p2, :cond_2

    .line 78
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 79
    .local v4, intentExtras:Landroid/os/Bundle;
    if-eqz v4, :cond_2

    .line 81
    invoke-virtual {v4}, Landroid/os/Bundle;->size()I

    move-result v5

    .line 82
    .local v5, numExtras:I
    const-string v6, "DolbyMobileAudioEffectClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "callerIntent.getExtras() = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const-string v6, "android.media.extra.AUDIO_SESSION"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 86
    const-string v6, "android.media.extra.AUDIO_SESSION"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 87
    const-string v6, "DolbyMobileAudioEffectClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AudioEffect.EXTRA_AUDIO_SESSION = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_0
    const-string v6, "android.media.extra.AUDIO_SESSION"

    invoke-virtual {v2, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 92
    const-string v6, "android.media.extra.PACKAGE_NAME"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 94
    const-string v6, "android.media.extra.PACKAGE_NAME"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, audioSessionPkgName:Ljava/lang/String;
    const-string v6, "DolbyMobileAudioEffectClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AudioEffect.EXTRA_PACKAGE_NAME = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const-string v6, "android.media.extra.PACKAGE_NAME"

    invoke-virtual {v2, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    .end local v1           #audioSessionPkgName:Ljava/lang/String;
    :cond_1
    const-string v6, "android.media.extra.CONTENT_TYPE"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 102
    const-string v6, "android.media.extra.CONTENT_TYPE"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 103
    .local v3, catInt:I
    const-string v6, "DMService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "android.media.extra.CONTENT_TYPE = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const-string v6, "android.media.extra.CONTENT_TYPE"

    invoke-virtual {v2, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 113
    .end local v3           #catInt:I
    .end local v4           #intentExtras:Landroid/os/Bundle;
    .end local v5           #numExtras:I
    :cond_2
    iget-object v6, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mConnection:Landroid/content/ServiceConnection;

    const/4 v7, 0x1

    invoke-virtual {p1, v2, v6, v7}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 114
    return-void
.end method

.method public getDMSystemInterface()Landroid/media/dolby/IDolbyMobileSystemInterface;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    return-object v0
.end method

.method public registerCallback(Landroid/media/dolby/DolbyMobileClientCallbacks;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 50
    if-eqz p1, :cond_0

    .line 52
    iput-object p1, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mActivityCallback:Landroid/media/dolby/DolbyMobileClientCallbacks;

    .line 54
    :cond_0
    return-void
.end method

.method public unBindFromRemoteRunningService(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 121
    const-string v0, "DolbyMobileAudioEffectClient"

    const-string v1, "DMGlobalAudioEffectControlPanel.unBindFromRemoteRunningService()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 128
    :cond_0
    return-void
.end method
