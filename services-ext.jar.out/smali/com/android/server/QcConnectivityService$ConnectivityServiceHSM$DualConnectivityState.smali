.class abstract Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;
.super Lcom/android/internal/util/State;
.source "QcConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "DualConnectivityState"
.end annotation


# instance fields
.field protected mOtherDefaultConnectionSequence:I

.field protected mOtherDefaultInetCondition:I

.field protected mOtherDefaultInetConditionPublished:I

.field protected mOtherInetConditionChangeInFlight:Z

.field protected myDefaultNet:I

.field protected otherDefaultNet:I

.field protected resetConnections:I

.field final synthetic this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;


# direct methods
.method protected constructor <init>(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 3523
    iput-object p1, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 3516
    iput v1, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->mOtherDefaultInetCondition:I

    iput v1, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->mOtherDefaultInetConditionPublished:I

    iput v1, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->mOtherDefaultConnectionSequence:I

    .line 3520
    iput-boolean v1, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->mOtherInetConditionChangeInFlight:Z

    .line 3521
    iput v1, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->resetConnections:I

    .line 3524
    const-string v0, "persist.cne.wqe.db"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->resetConnections:I

    .line 3525
    return-void
.end method

.method private handleConnectivityChange(IZZ)V
    .locals 13
    .parameter "netType"
    .parameter "doReset"
    .parameter "doDns"

    .prologue
    .line 4225
    iget-object v10, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v12}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$16700(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v12

    invoke-interface {v12}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " handleConnectivityChange"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$16800(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 4226
    if-eqz p2, :cond_4

    const/4 v8, 0x3

    .line 4229
    .local v8, resetMask:I
    :goto_0
    if-eqz p3, :cond_0

    .line 4230
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->handleDnsConfigurationChange(I)V

    .line 4233
    :cond_0
    iget-object v10, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v10, v10, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mCurrentLinkProperties:[Landroid/net/LinkProperties;
    invoke-static {v10}, Lcom/android/server/QcConnectivityService;->access$16900(Lcom/android/server/QcConnectivityService;)[Landroid/net/LinkProperties;

    move-result-object v10

    aget-object v1, v10, p1

    .line 4234
    .local v1, curLp:Landroid/net/LinkProperties;
    const/4 v6, 0x0

    .line 4236
    .local v6, newLp:Landroid/net/LinkProperties;
    iget-object v10, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v10, v10, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v10}, Lcom/android/server/QcConnectivityService;->access$900(Lcom/android/server/QcConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v10

    aget-object v10, v10, p1

    invoke-interface {v10}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v10

    if-eqz v10, :cond_c

    .line 4237
    iget-object v10, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v10, v10, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v10}, Lcom/android/server/QcConnectivityService;->access$900(Lcom/android/server/QcConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v10

    aget-object v10, v10, p1

    invoke-interface {v10}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v6

    .line 4239
    iget-object v10, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleConnectivityChange: changed linkProperty["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " doReset="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " resetMask="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n   curLp="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n   newLp="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$17000(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 4245
    if-eqz v1, :cond_6

    .line 4246
    invoke-virtual {v1, v6}, Landroid/net/LinkProperties;->isIdenticalInterfaceName(Landroid/net/LinkProperties;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 4247
    invoke-virtual {v1, v6}, Landroid/net/LinkProperties;->compareAddresses(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$CompareResult;

    move-result-object v0

    .line 4248
    .local v0, car:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    iget-object v10, v0, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->size()I

    move-result v10

    if-nez v10, :cond_1

    iget-object v10, v0, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->size()I

    move-result v10

    if-eqz v10, :cond_a

    .line 4249
    :cond_1
    iget-object v10, v0, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/LinkAddress;

    .line 4250
    .local v5, linkAddr:Landroid/net/LinkAddress;
    invoke-virtual {v5}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v10

    instance-of v10, v10, Ljava/net/Inet4Address;

    if-eqz v10, :cond_3

    .line 4251
    or-int/lit8 v8, v8, 0x1

    .line 4253
    :cond_3
    invoke-virtual {v5}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v10

    instance-of v10, v10, Ljava/net/Inet6Address;

    if-eqz v10, :cond_2

    .line 4254
    or-int/lit8 v8, v8, 0x2

    goto :goto_1

    .line 4226
    .end local v0           #car:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    .end local v1           #curLp:Landroid/net/LinkProperties;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #linkAddr:Landroid/net/LinkAddress;
    .end local v6           #newLp:Landroid/net/LinkProperties;
    .end local v8           #resetMask:I
    :cond_4
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 4258
    .restart local v0       #car:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    .restart local v1       #curLp:Landroid/net/LinkProperties;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v6       #newLp:Landroid/net/LinkProperties;
    .restart local v8       #resetMask:I
    :cond_5
    iget-object v10, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleConnectivityChange: addresses changed linkProperty["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " resetMask="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n   car="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$17100(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 4286
    .end local v0           #car:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_6
    :goto_2
    iget-object v10, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v10, v10, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mCurrentLinkProperties:[Landroid/net/LinkProperties;
    invoke-static {v10}, Lcom/android/server/QcConnectivityService;->access$16900(Lcom/android/server/QcConnectivityService;)[Landroid/net/LinkProperties;

    move-result-object v10

    aput-object v6, v10, p1

    .line 4287
    iget-object v10, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v10, v10, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    iget-object v10, v10, Lcom/android/server/QcConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v10, v10, p1

    invoke-virtual {v10}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v10

    iget-object v11, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v11, v11, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mRouteAttributes:[Lcom/android/server/QcConnectivityService$RouteAttributes;
    invoke-static {v11}, Lcom/android/server/QcConnectivityService;->access$5900(Lcom/android/server/QcConnectivityService;)[Lcom/android/server/QcConnectivityService$RouteAttributes;

    move-result-object v11

    aget-object v11, v11, p1

    invoke-virtual {p0, v6, v1, v10, v11}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->updateRoutes(Landroid/net/LinkProperties;Landroid/net/LinkProperties;ZLcom/android/server/QcConnectivityService$RouteAttributes;)Z

    move-result v7

    .line 4292
    .local v7, resetDns:Z
    if-nez v8, :cond_7

    if-eqz v7, :cond_e

    .line 4293
    :cond_7
    if-eqz v1, :cond_e

    .line 4294
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getAllInterfaceNames()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_8
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4295
    .local v4, iface:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_d

    .line 4296
    if-eqz v8, :cond_9

    .line 4297
    iget-object v10, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "resetConnections("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$17500(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 4298
    invoke-static {v4, v8}, Landroid/net/NetworkUtils;->resetConnections(Ljava/lang/String;I)I

    .line 4302
    and-int/lit8 v10, v8, 0x1

    if-eqz v10, :cond_9

    .line 4303
    iget-object v10, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v10, v10, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mVpn:Lcom/android/server/connectivity/Vpn;
    invoke-static {v10}, Lcom/android/server/QcConnectivityService;->access$11900(Lcom/android/server/QcConnectivityService;)Lcom/android/server/connectivity/Vpn;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v4, v11}, Lcom/android/server/connectivity/Vpn;->interfaceStatusChanged(Ljava/lang/String;Z)V

    .line 4306
    :cond_9
    if-eqz v7, :cond_8

    .line 4307
    iget-object v10, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v10, v10, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #calls: Lcom/android/server/QcConnectivityService;->flushVmDnsCache()V
    invoke-static {v10}, Lcom/android/server/QcConnectivityService;->access$13700(Lcom/android/server/QcConnectivityService;)V

    .line 4308
    iget-object v10, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "resetting DNS cache for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$17600(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 4310
    :try_start_0
    iget-object v10, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v10, v10, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mNetd:Landroid/os/INetworkManagementService;
    invoke-static {v10}, Lcom/android/server/QcConnectivityService;->access$12900(Lcom/android/server/QcConnectivityService;)Landroid/os/INetworkManagementService;

    move-result-object v10

    invoke-interface {v10, v4}, Landroid/os/INetworkManagementService;->flushInterfaceDnsCache(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 4311
    :catch_0
    move-exception v2

    .line 4313
    .local v2, e:Ljava/lang/Exception;
    iget-object v10, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception resetting dns cache: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->loge(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$17700(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 4264
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #iface:Ljava/lang/String;
    .end local v7           #resetDns:Z
    .restart local v0       #car:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    :cond_a
    iget-object v10, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleConnectivityChange: address are the same reset per doReset linkProperty["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " resetMask="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$17200(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 4270
    .end local v0           #car:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    :cond_b
    const/4 v8, 0x3

    .line 4272
    iget-object v10, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleConnectivityChange: interface not not equivalent reset both linkProperty["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " resetMask="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$17300(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 4280
    :cond_c
    iget-object v10, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleConnectivityChange: changed linkProperty["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " doReset="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " resetMask="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n  curLp="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n  newLp= null"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$17400(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 4317
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #iface:Ljava/lang/String;
    .restart local v7       #resetDns:Z
    :cond_d
    iget-object v10, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Can\'t reset connection for type "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->loge(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$17800(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 4324
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #iface:Ljava/lang/String;
    :cond_e
    iget-object v10, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v10, v10, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v10}, Lcom/android/server/QcConnectivityService;->access$900(Lcom/android/server/QcConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v10

    aget-object v9, v10, p1

    .line 4325
    .local v9, tracker:Landroid/net/NetworkStateTracker;
    iget-object v10, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v10, v10, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mClat:Lcom/android/server/connectivity/Nat464Xlat;
    invoke-static {v10}, Lcom/android/server/QcConnectivityService;->access$13800(Lcom/android/server/QcConnectivityService;)Lcom/android/server/connectivity/Nat464Xlat;

    move-result-object v10

    invoke-virtual {v10, p1, v9}, Lcom/android/server/connectivity/Nat464Xlat;->requiresClat(ILandroid/net/NetworkStateTracker;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 4331
    invoke-static {v1}, Lcom/android/server/connectivity/Nat464Xlat;->isRunningClat(Landroid/net/LinkProperties;)Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-static {v6}, Lcom/android/server/connectivity/Nat464Xlat;->isRunningClat(Landroid/net/LinkProperties;)Z

    move-result v10

    if-nez v10, :cond_f

    .line 4332
    iget-object v10, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v10, v10, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mClat:Lcom/android/server/connectivity/Nat464Xlat;
    invoke-static {v10}, Lcom/android/server/QcConnectivityService;->access$13800(Lcom/android/server/QcConnectivityService;)Lcom/android/server/connectivity/Nat464Xlat;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/connectivity/Nat464Xlat;->stopClat()V

    .line 4335
    :cond_f
    iget-object v10, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v10, v10, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v10}, Lcom/android/server/QcConnectivityService;->access$900(Lcom/android/server/QcConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v10

    aget-object v10, v10, p1

    invoke-interface {v10}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v10

    if-eqz v10, :cond_12

    .line 4336
    iget-object v10, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v10, v10, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mClat:Lcom/android/server/connectivity/Nat464Xlat;
    invoke-static {v10}, Lcom/android/server/QcConnectivityService;->access$13800(Lcom/android/server/QcConnectivityService;)Lcom/android/server/connectivity/Nat464Xlat;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/android/server/connectivity/Nat464Xlat;->startClat(Landroid/net/NetworkStateTracker;)V

    .line 4345
    :cond_10
    :goto_4
    iget-object v10, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v10, v10, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v10}, Lcom/android/server/QcConnectivityService;->access$900(Lcom/android/server/QcConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v10

    aget-object v10, v10, p1

    invoke-interface {v10}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v10

    const-string v11, "linkPropertiesChanged"

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 4347
    iget-object v10, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v10, v10, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    invoke-virtual {v10}, Lcom/android/server/QcConnectivityService;->isTetheringSupported()Z

    move-result v10

    if-eqz v10, :cond_11

    .line 4348
    iget-object v10, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v10, v10, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;
    invoke-static {v10}, Lcom/android/server/QcConnectivityService;->access$17900(Lcom/android/server/QcConnectivityService;)Lcom/android/server/connectivity/Tethering;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/connectivity/Tethering;->handleTetherIfaceChange()V

    .line 4351
    :cond_11
    return-void

    .line 4338
    :cond_12
    iget-object v10, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v10, v10, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mClat:Lcom/android/server/connectivity/Nat464Xlat;
    invoke-static {v10}, Lcom/android/server/QcConnectivityService;->access$13800(Lcom/android/server/QcConnectivityService;)Lcom/android/server/connectivity/Nat464Xlat;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/connectivity/Nat464Xlat;->stopClat()V

    goto :goto_4
.end method

.method private updateDnsLocked(Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;)V
    .locals 15
    .parameter "iface"
    .parameter
    .parameter "domains"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetAddress;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3786
    .local p2, netDnses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    iget-object v11, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v13}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$12100(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v13

    invoke-interface {v13}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " updateDns"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$12200(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 3787
    const/4 v0, 0x0

    .line 3788
    .local v0, changed:Z
    const/4 v7, 0x0

    .line 3789
    .local v7, last:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3790
    .local v2, dnses:Ljava/util/List;,"Ljava/util/List<Ljava/net/InetAddress;>;"
    const/4 v8, 0x0

    .line 3791
    .local v8, mlp:Landroid/net/LinkProperties;
    const/4 v9, 0x0

    .line 3793
    .local v9, olp:Landroid/net/LinkProperties;
    iget-object v11, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v11, v11, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v11}, Lcom/android/server/QcConnectivityService;->access$900(Lcom/android/server/QcConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #getter for: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->myDefaultDnsNet:I
    invoke-static {v12}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$6000(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)I

    move-result v12

    aget-object v11, v11, v12

    invoke-interface {v11}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v8

    if-nez v8, :cond_1

    .line 3795
    iget-object v11, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    const-string v12, "mlp is NULL"

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$12300(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 3851
    :cond_0
    :goto_0
    return-void

    .line 3799
    :cond_1
    iget-object v11, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #getter for: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->otherDefaultDnsNet:I
    invoke-static {v11}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$6100(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_2

    .line 3800
    iget-object v11, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v11, v11, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v11}, Lcom/android/server/QcConnectivityService;->access$900(Lcom/android/server/QcConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #getter for: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->otherDefaultDnsNet:I
    invoke-static {v12}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$6100(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)I

    move-result v12

    aget-object v11, v11, v12

    invoke-interface {v11}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v9

    .line 3803
    :cond_2
    invoke-virtual {v8}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3804
    if-eqz v9, :cond_3

    .line 3805
    invoke-virtual {v9}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3808
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_4

    iget-object v11, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v11, v11, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mDefaultDns:Ljava/net/InetAddress;
    invoke-static {v11}, Lcom/android/server/QcConnectivityService;->access$12400(Lcom/android/server/QcConnectivityService;)Ljava/net/InetAddress;

    move-result-object v11

    if-eqz v11, :cond_4

    .line 3809
    iget-object v11, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v11, v11, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mDefaultDns:Ljava/net/InetAddress;
    invoke-static {v11}, Lcom/android/server/QcConnectivityService;->access$12400(Lcom/android/server/QcConnectivityService;)Ljava/net/InetAddress;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3811
    iget-object v11, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "no dns provided - using "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v13, v13, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mDefaultDns:Ljava/net/InetAddress;
    invoke-static {v13}, Lcom/android/server/QcConnectivityService;->access$12400(Lcom/android/server/QcConnectivityService;)Ljava/net/InetAddress;

    move-result-object v13

    invoke-virtual {v13}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->loge(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$12500(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 3813
    const/4 v0, 0x1

    .line 3815
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 3816
    .local v1, dns:Ljava/net/InetAddress;
    add-int/lit8 v7, v7, 0x1

    .line 3817
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "net.dns"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3818
    .local v6, key:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v10

    .line 3819
    .local v10, value:Ljava/lang/String;
    if-nez v0, :cond_6

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 3822
    :cond_6
    iget-object v11, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "adding dns "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$12600(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 3823
    const/4 v0, 0x1

    .line 3824
    invoke-static {v6, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3826
    .end local v1           #dns:Ljava/net/InetAddress;
    .end local v6           #key:Ljava/lang/String;
    .end local v10           #value:Ljava/lang/String;
    :cond_7
    add-int/lit8 v4, v7, 0x1

    .local v4, i:I
    :goto_2
    iget-object v11, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v11, v11, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mNumDnsEntries:I
    invoke-static {v11}, Lcom/android/server/QcConnectivityService;->access$12700(Lcom/android/server/QcConnectivityService;)I

    move-result v11

    if-gt v4, v11, :cond_8

    .line 3827
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "net.dns"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3828
    .restart local v6       #key:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "erasing "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$12800(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 3829
    const/4 v0, 0x1

    .line 3830
    const-string v11, ""

    invoke-static {v6, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3826
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 3832
    .end local v6           #key:Ljava/lang/String;
    :cond_8
    iget-object v11, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v11, v11, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #setter for: Lcom/android/server/QcConnectivityService;->mNumDnsEntries:I
    invoke-static {v11, v7}, Lcom/android/server/QcConnectivityService;->access$12702(Lcom/android/server/QcConnectivityService;I)I

    .line 3834
    if-eqz v0, :cond_0

    .line 3836
    :try_start_0
    iget-object v11, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v11, v11, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mNetd:Landroid/os/INetworkManagementService;
    invoke-static {v11}, Lcom/android/server/QcConnectivityService;->access$12900(Lcom/android/server/QcConnectivityService;)Landroid/os/INetworkManagementService;

    move-result-object v11

    invoke-virtual {v8}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v13

    invoke-static {v13}, Landroid/net/NetworkUtils;->makeStrings(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8}, Landroid/net/LinkProperties;->getDomains()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v11, v12, v13, v14}, Landroid/os/INetworkManagementService;->setDnsServersForInterface(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 3840
    iget-object v11, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v11, v11, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mNetd:Landroid/os/INetworkManagementService;
    invoke-static {v11}, Lcom/android/server/QcConnectivityService;->access$12900(Lcom/android/server/QcConnectivityService;)Landroid/os/INetworkManagementService;

    move-result-object v11

    invoke-virtual {v8}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Landroid/os/INetworkManagementService;->setDefaultInterfaceForDns(Ljava/lang/String;)V

    .line 3841
    if-eqz v9, :cond_0

    .line 3842
    iget-object v11, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v11, v11, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mNetd:Landroid/os/INetworkManagementService;
    invoke-static {v11}, Lcom/android/server/QcConnectivityService;->access$12900(Lcom/android/server/QcConnectivityService;)Landroid/os/INetworkManagementService;

    move-result-object v11

    invoke-virtual {v9}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v13

    invoke-static {v13}, Landroid/net/NetworkUtils;->makeStrings(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9}, Landroid/net/LinkProperties;->getDomains()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v11, v12, v13, v14}, Landroid/os/INetworkManagementService;->setDnsServersForInterface(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 3847
    :catch_0
    move-exception v3

    .line 3848
    .local v3, e:Ljava/lang/Exception;
    iget-object v11, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "exception setting default dns interface: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->loge(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$13000(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected addRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;II)Z
    .locals 8
    .parameter "lp"
    .parameter "r"
    .parameter "cycleCount"
    .parameter "defaultRouteMetric"

    .prologue
    const/4 v4, 0x0

    .line 4408
    iget-object v5, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v7}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$18700(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " addRoute"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$18800(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 4409
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 4410
    :cond_0
    iget-object v5, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addRoute got unexpected null: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$18900(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 4413
    :cond_1
    const/16 v5, 0xa

    if-le p3, v5, :cond_2

    .line 4414
    iget-object v5, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    const-string v6, "Error adding route - too much recursion"

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->loge(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$19000(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 4469
    :goto_0
    return v4

    .line 4418
    :cond_2
    const/4 v3, 0x0

    .line 4419
    .local v3, metric:I
    invoke-virtual {p2}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v2

    .line 4420
    .local v2, ifaceName:Ljava/lang/String;
    if-nez v2, :cond_3

    .line 4421
    iget-object v5, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    const-string v6, "Error adding route - no interface name"

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->loge(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$19100(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    goto :goto_0

    .line 4426
    :cond_3
    invoke-virtual {p2}, Landroid/net/RouteInfo;->isHostRoute()Z

    move-result v5

    if-nez v5, :cond_4

    move v3, p4

    .line 4427
    :cond_4
    invoke-virtual {p2}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 4428
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/Collection;

    move-result-object v5

    invoke-virtual {p2}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/net/RouteInfo;->selectBestRoute(Ljava/util/Collection;Ljava/net/InetAddress;)Landroid/net/RouteInfo;

    move-result-object v0

    .line 4430
    .local v0, bestRoute:Landroid/net/RouteInfo;
    if-eqz v0, :cond_5

    .line 4431
    invoke-virtual {v0}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {p2}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 4433
    invoke-virtual {p2}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v5

    invoke-static {v5, v2}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;Ljava/lang/String;)Landroid/net/RouteInfo;

    move-result-object v0

    .line 4442
    :goto_1
    add-int/lit8 v5, p3, 0x1

    invoke-virtual {p0, p1, v0, v5, v3}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->addRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;II)Z

    .line 4449
    .end local v0           #bestRoute:Landroid/net/RouteInfo;
    :cond_5
    :try_start_0
    iget-object v5, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v5, v5, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mAddedRoutes:Ljava/util/Collection;
    invoke-static {v5}, Lcom/android/server/QcConnectivityService;->access$19200(Lcom/android/server/QcConnectivityService;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5, p2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 4450
    iget-object v5, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v5, v5, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mAddedRoutes:Ljava/util/Collection;
    invoke-static {v5}, Lcom/android/server/QcConnectivityService;->access$19200(Lcom/android/server/QcConnectivityService;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 4451
    :cond_6
    iget-object v5, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Routes in main table - [ "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v7, v7, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mAddedRoutes:Ljava/util/Collection;
    invoke-static {v7}, Lcom/android/server/QcConnectivityService;->access$19200(Lcom/android/server/QcConnectivityService;)Ljava/util/Collection;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$19300(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 4452
    invoke-virtual {p2}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v5

    instance-of v5, v5, Ljava/net/Inet6Address;

    if-eqz v5, :cond_7

    .line 4454
    if-lez v3, :cond_9

    .line 4455
    add-int/lit16 v3, v3, 0x400

    .line 4461
    :cond_7
    :goto_2
    iget-object v5, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Adding "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with metric "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for interface "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$19400(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 4463
    iget-object v5, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v5, v5, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mNetd:Landroid/os/INetworkManagementService;
    invoke-static {v5}, Lcom/android/server/QcConnectivityService;->access$12900(Lcom/android/server/QcConnectivityService;)Landroid/os/INetworkManagementService;

    move-result-object v5

    invoke-interface {v5, v2, v3, p2}, Landroid/os/INetworkManagementService;->addRouteWithMetric(Ljava/lang/String;ILandroid/net/RouteInfo;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4469
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 4437
    .restart local v0       #bestRoute:Landroid/net/RouteInfo;
    :cond_8
    invoke-virtual {p2}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v0}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/lang/String;)Landroid/net/RouteInfo;

    move-result-object v0

    goto/16 :goto_1

    .line 4457
    .end local v0           #bestRoute:Landroid/net/RouteInfo;
    :cond_9
    const/16 v3, 0x100

    goto :goto_2

    .line 4464
    :catch_0
    move-exception v1

    .line 4466
    .local v1, e:Ljava/lang/Exception;
    iget-object v5, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception trying to add a Metric Route: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->loge(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$19500(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected handleConnect(Landroid/net/NetworkInfo;)I
    .locals 10
    .parameter "info"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 4070
    iget-object v7, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v9}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$14900(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " handleConnect"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$15000(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 4071
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    .line 4072
    .local v4, type:I
    iget-object v7, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v7, v7, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v7}, Lcom/android/server/QcConnectivityService;->access$900(Lcom/android/server/QcConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v7

    aget-object v3, v7, v4

    .line 4075
    .local v3, thisNet:Landroid/net/NetworkStateTracker;
    iget-object v7, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v7, v7, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    iget-object v7, v7, Lcom/android/server/QcConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v7, v7, v4

    invoke-virtual {v7}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v7

    if-nez v7, :cond_1

    .line 4076
    const/4 v5, -0x1

    .line 4130
    :cond_0
    :goto_0
    return v5

    .line 4081
    :cond_1
    iget-object v7, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #getter for: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->mConnectedDefaultNetworks:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;
    invoke-static {v7}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$6400(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;->contains(I)Z

    move-result v7

    if-nez v7, :cond_2

    .line 4082
    invoke-virtual {p0, v4}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->isHigherPriorityNet(I)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, -0x2

    goto :goto_0

    .line 4088
    :cond_2
    const/4 v0, 0x0

    .line 4089
    .local v0, causedBy:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v7, v7, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    monitor-enter v7

    .line 4090
    :try_start_0
    iget-object v8, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v8, v8, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v8}, Lcom/android/server/QcConnectivityService;->access$2900(Lcom/android/server/QcConnectivityService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 4091
    iget-object v8, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v8, v8, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v8}, Lcom/android/server/QcConnectivityService;->access$2900(Lcom/android/server/QcConnectivityService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4092
    iget-object v8, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v8, v8, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTransitionWakeLockCausedBy:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/QcConnectivityService;->access$3000(Lcom/android/server/QcConnectivityService;)Ljava/lang/String;

    move-result-object v0

    .line 4094
    :cond_3
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4095
    if-eqz v0, :cond_4

    .line 4096
    iget-object v7, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "NetTransition Wakelock for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " released because of connect"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$15100(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 4099
    :cond_4
    iget v7, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->myDefaultNet:I

    if-ne v4, v7, :cond_7

    .line 4100
    iget-object v7, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v7, v7, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #setter for: Lcom/android/server/QcConnectivityService;->mDefaultInetConditionPublished:I
    invoke-static {v7, v5}, Lcom/android/server/QcConnectivityService;->access$11402(Lcom/android/server/QcConnectivityService;I)I

    .line 4101
    iget-object v7, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v7, v7, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    invoke-static {v7}, Lcom/android/server/QcConnectivityService;->access$15208(Lcom/android/server/QcConnectivityService;)I

    .line 4102
    iget-object v7, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v7, v7, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #setter for: Lcom/android/server/QcConnectivityService;->mInetConditionChangeInFlight:Z
    invoke-static {v7, v5}, Lcom/android/server/QcConnectivityService;->access$15302(Lcom/android/server/QcConnectivityService;Z)Z

    .line 4108
    :goto_1
    invoke-interface {v3, v5}, Landroid/net/NetworkStateTracker;->setTeardownRequested(Z)V

    .line 4109
    iget v7, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->myDefaultNet:I

    if-ne v4, v7, :cond_5

    .line 4110
    iget-object v7, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v7, v7, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #calls: Lcom/android/server/QcConnectivityService;->updateNetworkSettings(Landroid/net/NetworkStateTracker;)V
    invoke-static {v7, v3}, Lcom/android/server/QcConnectivityService;->access$5400(Lcom/android/server/QcConnectivityService;Landroid/net/NetworkStateTracker;)V

    .line 4114
    :cond_5
    iget v7, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->myDefaultNet:I

    if-ne v4, v7, :cond_8

    move v1, v6

    .line 4115
    .local v1, doDns:Z
    :goto_2
    invoke-direct {p0, v4, v5, v1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->handleConnectivityChange(IZZ)V

    .line 4116
    iget v7, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->otherDefaultNet:I

    if-eq v4, v7, :cond_9

    .line 4117
    iget-object v6, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v6, v6, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    iget-object v7, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v7, v7, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #calls: Lcom/android/server/QcConnectivityService;->getConnectivityChangeDelay()I
    invoke-static {v7}, Lcom/android/server/QcConnectivityService;->access$14400(Lcom/android/server/QcConnectivityService;)I

    move-result v7

    #calls: Lcom/android/server/QcConnectivityService;->sendConnectedBroadcastDelayed(Landroid/net/NetworkInfo;I)V
    invoke-static {v6, p1, v7}, Lcom/android/server/QcConnectivityService;->access$15400(Lcom/android/server/QcConnectivityService;Landroid/net/NetworkInfo;I)V

    .line 4122
    :cond_6
    :goto_3
    invoke-interface {v3}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    .line 4123
    .local v2, iface:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 4125
    :try_start_1
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v6

    invoke-interface {v6, v2, v4}, Lcom/android/internal/app/IBatteryStats;->noteNetworkInterfaceType(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 4126
    :catch_0
    move-exception v6

    goto/16 :goto_0

    .line 4094
    .end local v1           #doDns:Z
    .end local v2           #iface:Ljava/lang/String;
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 4104
    :cond_7
    iput v5, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->mOtherDefaultInetConditionPublished:I

    .line 4105
    iget v7, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->mOtherDefaultConnectionSequence:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->mOtherDefaultConnectionSequence:I

    .line 4106
    iput-boolean v5, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->mOtherInetConditionChangeInFlight:Z

    goto :goto_1

    :cond_8
    move v1, v5

    .line 4114
    goto :goto_2

    .line 4118
    .restart local v1       #doDns:Z
    :cond_9
    if-ne v4, v6, :cond_6

    .line 4119
    iget-object v6, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->sendConnectivityUpBroadcast(I)V
    invoke-static {v6, v4}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$15500(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;I)V

    goto :goto_3
.end method

.method protected handleConnectivitySwitch(ILjava/lang/String;)Z
    .locals 6
    .parameter "netType"
    .parameter "reason"

    .prologue
    .line 3735
    iget-object v3, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v5}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$11500(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " handleConnectivitySwitch"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$11600(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 3736
    const/4 v1, 0x1

    .line 3738
    .local v1, ret:Z
    iget-object v3, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #getter for: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->mConnectedDefaultNetworks:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;
    invoke-static {v3}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$6400(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;->contains(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3739
    iget-object v3, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Network "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not supported for default connectivity"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->logw(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$11700(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    move v2, v1

    .line 3775
    .end local v1           #ret:Z
    .local v2, ret:I
    :goto_0
    return v2

    .line 3743
    .end local v2           #ret:I
    .restart local v1       #ret:Z
    :cond_0
    iget-object v3, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v3, v3, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mActiveDefaultNetwork:I
    invoke-static {v3}, Lcom/android/server/QcConnectivityService;->access$800(Lcom/android/server/QcConnectivityService;)I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 3744
    iget-object v3, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Network"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is already default"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->logw(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$11800(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    move v2, v1

    .line 3745
    .restart local v2       #ret:I
    goto :goto_0

    .line 3747
    .end local v2           #ret:I
    :cond_1
    iget v3, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->myDefaultNet:I

    if-ne v3, p1, :cond_3

    .line 3749
    iget-object v3, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v3, v3, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    iget v4, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->myDefaultNet:I

    #setter for: Lcom/android/server/QcConnectivityService;->mActiveDefaultNetwork:I
    invoke-static {v3, v4}, Lcom/android/server/QcConnectivityService;->access$802(Lcom/android/server/QcConnectivityService;I)I

    .line 3750
    iget v3, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->otherDefaultNet:I

    invoke-virtual {p0, v3}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->updateDefaultRouteMetric(I)V

    .line 3752
    iget-object v3, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v3, v3, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v3}, Lcom/android/server/QcConnectivityService;->access$900(Lcom/android/server/QcConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v3

    iget v4, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->otherDefaultNet:I

    aget-object v3, v3, v4

    invoke-interface {v3}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 3754
    .local v0, iface:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v3, v3, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mVpn:Lcom/android/server/connectivity/Vpn;
    invoke-static {v3}, Lcom/android/server/QcConnectivityService;->access$11900(Lcom/android/server/QcConnectivityService;)Lcom/android/server/connectivity/Vpn;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lcom/android/server/connectivity/Vpn;->interfaceStatusChanged(Ljava/lang/String;Z)V

    .line 3759
    iget-object v3, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v3, v3, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    iget-object v4, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v4, v4, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v4}, Lcom/android/server/QcConnectivityService;->access$900(Lcom/android/server/QcConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v4

    iget v5, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->myDefaultNet:I

    aget-object v4, v4, v5

    invoke-interface {v4}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v4

    #calls: Lcom/android/server/QcConnectivityService;->handleApplyDefaultProxy(Landroid/net/ProxyProperties;)V
    invoke-static {v3, v4}, Lcom/android/server/QcConnectivityService;->access$12000(Lcom/android/server/QcConnectivityService;Landroid/net/ProxyProperties;)V

    .line 3763
    iget-object v3, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v3, v3, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    iget-object v4, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v4, v4, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v4}, Lcom/android/server/QcConnectivityService;->access$900(Lcom/android/server/QcConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v4

    iget v5, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->myDefaultNet:I

    aget-object v4, v4, v5

    #calls: Lcom/android/server/QcConnectivityService;->updateNetworkSettings(Landroid/net/NetworkStateTracker;)V
    invoke-static {v3, v4}, Lcom/android/server/QcConnectivityService;->access$5400(Lcom/android/server/QcConnectivityService;Landroid/net/NetworkStateTracker;)V

    .line 3764
    iget v3, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->resetConnections:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 3767
    const/4 v3, 0x3

    invoke-static {v0, v3}, Landroid/net/NetworkUtils;->resetConnections(Ljava/lang/String;I)I

    .line 3769
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->sendConnectivitySwitchBroadcast(Ljava/lang/String;)V

    .end local v0           #iface:Ljava/lang/String;
    :goto_1
    move v2, v1

    .line 3775
    .restart local v2       #ret:I
    goto/16 :goto_0

    .line 3772
    .end local v2           #ret:I
    :cond_3
    iget v3, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->myDefaultNet:I

    invoke-virtual {p0, v3}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->removeDefaultRoutes(I)V

    .line 3773
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected handleDisconnect(Landroid/net/NetworkInfo;)I
    .locals 21
    .parameter "info"

    .prologue
    .line 3938
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v20, v0

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static/range {v20 .. v20}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$14100(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " handleDisconnect"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$14200(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 3939
    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v17

    .line 3942
    .local v17, type:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/QcConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v18, v0

    aget-object v18, v18, v17

    invoke-virtual/range {v18 .. v18}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v18

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->mConnectedDefaultNetworks:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;
    invoke-static/range {v18 .. v18}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$6400(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;->contains(I)Z

    move-result v18

    if-nez v18, :cond_1

    .line 3943
    :cond_0
    const/16 v18, 0x0

    .line 4033
    :goto_0
    return v18

    .line 3946
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->myDefaultNet:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 3947
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->myDefaultDnsNet:I
    invoke-static/range {v18 .. v18}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$6000(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)I

    move-result v18

    move/from16 v0, v18

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    .line 3948
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->otherDefaultNet:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->handleDnsReprioritization(II)V

    .line 3951
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->mConnectedDefaultNetworks:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;
    invoke-static/range {v18 .. v18}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$6400(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;->remove(I)Z

    .line 3953
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->otherDefaultNet:I

    move/from16 v19, v0

    #setter for: Lcom/android/server/QcConnectivityService;->mActiveDefaultNetwork:I
    invoke-static/range {v18 .. v19}, Lcom/android/server/QcConnectivityService;->access$802(Lcom/android/server/QcConnectivityService;I)I

    .line 3954
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static/range {v18 .. v18}, Lcom/android/server/QcConnectivityService;->access$900(Lcom/android/server/QcConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v19, v0

    #getter for: Lcom/android/server/QcConnectivityService;->mActiveDefaultNetwork:I
    invoke-static/range {v19 .. v19}, Lcom/android/server/QcConnectivityService;->access$800(Lcom/android/server/QcConnectivityService;)I

    move-result v19

    aget-object v18, v18, v19

    invoke-interface/range {v18 .. v18}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v16

    .line 3955
    .local v16, otherInfo:Landroid/net/NetworkInfo;
    const/16 v18, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setFailover(Z)V

    .line 3958
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v19, v0

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static/range {v19 .. v19}, Lcom/android/server/QcConnectivityService;->access$900(Lcom/android/server/QcConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v20, v0

    #getter for: Lcom/android/server/QcConnectivityService;->mActiveDefaultNetwork:I
    invoke-static/range {v20 .. v20}, Lcom/android/server/QcConnectivityService;->access$800(Lcom/android/server/QcConnectivityService;)I

    move-result v20

    aget-object v19, v19, v20

    #calls: Lcom/android/server/QcConnectivityService;->updateNetworkSettings(Landroid/net/NetworkStateTracker;)V
    invoke-static/range {v18 .. v19}, Lcom/android/server/QcConnectivityService;->access$5400(Lcom/android/server/QcConnectivityService;Landroid/net/NetworkStateTracker;)V

    .line 3959
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/QcConnectivityService;->sendConnectedBroadcast(Landroid/net/NetworkInfo;)V

    .line 3960
    const/16 v18, -0x1

    goto/16 :goto_0

    .line 3965
    .end local v16           #otherInfo:Landroid/net/NetworkInfo;
    :cond_3
    const/4 v4, 0x0

    .line 3966
    .local v4, causedBy:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 3967
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static/range {v18 .. v18}, Lcom/android/server/QcConnectivityService;->access$2900(Lcom/android/server/QcConnectivityService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v18

    if-eqz v18, :cond_4

    .line 3968
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static/range {v18 .. v18}, Lcom/android/server/QcConnectivityService;->access$2900(Lcom/android/server/QcConnectivityService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3969
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTransitionWakeLockCausedBy:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/android/server/QcConnectivityService;->access$3000(Lcom/android/server/QcConnectivityService;)Ljava/lang/String;

    move-result-object v4

    .line 3971
    :cond_4
    monitor-exit v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3972
    if-eqz v4, :cond_5

    .line 3973
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "NetTransition Wakelock for "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " released because of disconnect"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$14300(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 3977
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static/range {v18 .. v18}, Lcom/android/server/QcConnectivityService;->access$900(Lcom/android/server/QcConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v18

    aget-object v18, v18, v17

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Landroid/net/NetworkStateTracker;->setTeardownRequested(Z)V

    .line 3979
    new-instance v9, Landroid/content/Intent;

    const-string v18, "android.net.conn.CONNECTIVITY_CHANGE"

    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3980
    .local v9, intent:Landroid/content/Intent;
    const-string v18, "networkInfo"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3981
    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v18

    if-eqz v18, :cond_6

    .line 3982
    const-string v18, "isFailover"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3983
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setFailover(Z)V

    .line 3985
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_7

    .line 3986
    const-string v18, "reason"

    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3988
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_8

    .line 3989
    const-string v18, "extraInfo"

    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3992
    :cond_8
    const-string v18, "otherNetwork"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v19, v0

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static/range {v19 .. v19}, Lcom/android/server/QcConnectivityService;->access$900(Lcom/android/server/QcConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->myDefaultNet:I

    move/from16 v20, v0

    aget-object v19, v19, v20

    invoke-interface/range {v19 .. v19}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3994
    const-string v18, "inetCondition"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v19, v0

    #getter for: Lcom/android/server/QcConnectivityService;->mDefaultInetConditionPublished:I
    invoke-static/range {v19 .. v19}, Lcom/android/server/QcConnectivityService;->access$11400(Lcom/android/server/QcConnectivityService;)I

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3998
    const/4 v6, 0x1

    .line 3999
    .local v6, doReset:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static/range {v18 .. v18}, Lcom/android/server/QcConnectivityService;->access$900(Lcom/android/server/QcConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v18

    aget-object v18, v18, v17

    invoke-interface/range {v18 .. v18}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v12

    .line 4000
    .local v12, linkProperties:Landroid/net/LinkProperties;
    if-eqz v12, :cond_b

    .line 4001
    invoke-virtual {v12}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v15

    .line 4002
    .local v15, oldIface:Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_b

    .line 4003
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static/range {v18 .. v18}, Lcom/android/server/QcConnectivityService;->access$900(Lcom/android/server/QcConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v3

    .local v3, arr$:[Landroid/net/NetworkStateTracker;
    array-length v11, v3

    .local v11, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_1
    if-ge v7, v11, :cond_b

    aget-object v14, v3, v7

    .line 4004
    .local v14, networkStateTracker:Landroid/net/NetworkStateTracker;
    if-nez v14, :cond_a

    .line 4003
    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 3971
    .end local v3           #arr$:[Landroid/net/NetworkStateTracker;
    .end local v6           #doReset:Z
    .end local v7           #i$:I
    .end local v9           #intent:Landroid/content/Intent;
    .end local v11           #len$:I
    .end local v12           #linkProperties:Landroid/net/LinkProperties;
    .end local v14           #networkStateTracker:Landroid/net/NetworkStateTracker;
    .end local v15           #oldIface:Ljava/lang/String;
    :catchall_0
    move-exception v18

    :try_start_1
    monitor-exit v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v18

    .line 4005
    .restart local v3       #arr$:[Landroid/net/NetworkStateTracker;
    .restart local v6       #doReset:Z
    .restart local v7       #i$:I
    .restart local v9       #intent:Landroid/content/Intent;
    .restart local v11       #len$:I
    .restart local v12       #linkProperties:Landroid/net/LinkProperties;
    .restart local v14       #networkStateTracker:Landroid/net/NetworkStateTracker;
    .restart local v15       #oldIface:Ljava/lang/String;
    :cond_a
    invoke-interface {v14}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v13

    .line 4006
    .local v13, networkInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v13}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v18

    if-eqz v18, :cond_9

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getType()I

    move-result v18

    move/from16 v0, v18

    move/from16 v1, v17

    if-eq v0, v1, :cond_9

    .line 4007
    invoke-interface {v14}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v10

    .line 4008
    .local v10, l:Landroid/net/LinkProperties;
    if-eqz v10, :cond_9

    .line 4009
    invoke-virtual {v10}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 4010
    const/4 v6, 0x0

    .line 4019
    .end local v3           #arr$:[Landroid/net/NetworkStateTracker;
    .end local v7           #i$:I
    .end local v10           #l:Landroid/net/LinkProperties;
    .end local v11           #len$:I
    .end local v13           #networkInfo:Landroid/net/NetworkInfo;
    .end local v14           #networkStateTracker:Landroid/net/NetworkStateTracker;
    .end local v15           #oldIface:Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->myDefaultNet:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    const/4 v5, 0x1

    .line 4020
    .local v5, doDns:Z
    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v6, v5}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->handleConnectivityChange(IZZ)V

    .line 4022
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 4023
    .local v8, immediateIntent:Landroid/content/Intent;
    const-string v18, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4024
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #calls: Lcom/android/server/QcConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V
    invoke-static {v0, v8}, Lcom/android/server/QcConnectivityService;->access$3900(Lcom/android/server/QcConnectivityService;Landroid/content/Intent;)V

    .line 4025
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v19, v0

    #calls: Lcom/android/server/QcConnectivityService;->getConnectivityChangeDelay()I
    invoke-static/range {v19 .. v19}, Lcom/android/server/QcConnectivityService;->access$14400(Lcom/android/server/QcConnectivityService;)I

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    #calls: Lcom/android/server/QcConnectivityService;->sendStickyBroadcastDelayed(Landroid/content/Intent;I)V
    invoke-static {v0, v9, v1}, Lcom/android/server/QcConnectivityService;->access$14500(Lcom/android/server/QcConnectivityService;Landroid/content/Intent;I)V

    .line 4028
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->myDefaultDnsNet:I
    invoke-static/range {v18 .. v18}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$6000(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)I

    move-result v18

    move/from16 v0, v18

    move/from16 v1, v17

    if-ne v0, v1, :cond_c

    .line 4029
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->myDefaultNet:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->handleDnsReprioritization(II)V

    .line 4032
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->mConnectedDefaultNetworks:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;
    invoke-static/range {v18 .. v18}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$6400(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;->remove(I)Z

    .line 4033
    const/16 v18, -0x2

    goto/16 :goto_0

    .line 4019
    .end local v5           #doDns:Z
    .end local v8           #immediateIntent:Landroid/content/Intent;
    :cond_d
    const/4 v5, 0x0

    goto :goto_2
.end method

.method protected handleDnsConfigurationChange(I)V
    .locals 12
    .parameter "netType"

    .prologue
    .line 3891
    iget-object v8, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v8, v8, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v8}, Lcom/android/server/QcConnectivityService;->access$900(Lcom/android/server/QcConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v8

    aget-object v4, v8, p1

    .line 3892
    .local v4, nt:Landroid/net/NetworkStateTracker;
    if-eqz v4, :cond_0

    invoke-interface {v4}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4}, Landroid/net/NetworkStateTracker;->isTeardownRequested()Z

    move-result v8

    if-nez v8, :cond_0

    .line 3893
    invoke-interface {v4}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v5

    .line 3894
    .local v5, p:Landroid/net/LinkProperties;
    if-nez v5, :cond_1

    .line 3922
    .end local v5           #p:Landroid/net/LinkProperties;
    :cond_0
    :goto_0
    return-void

    .line 3895
    .restart local v5       #p:Landroid/net/LinkProperties;
    :cond_1
    invoke-virtual {v5}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v0

    .line 3896
    .local v0, dnses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    iget-object v8, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v8, v8, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    iget-object v8, v8, Lcom/android/server/QcConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v8, v8, p1

    invoke-virtual {v8}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 3897
    invoke-interface {v4}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    .line 3898
    .local v3, network:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v8, v8, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mDnsLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/server/QcConnectivityService;->access$13500(Lcom/android/server/QcConnectivityService;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 3899
    :try_start_0
    iget-object v8, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v8, v8, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mDnsOverridden:Z
    invoke-static {v8}, Lcom/android/server/QcConnectivityService;->access$13600(Lcom/android/server/QcConnectivityService;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 3900
    invoke-virtual {v5}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Landroid/net/LinkProperties;->getDomains()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v8, v0, v10}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->updateDnsLocked(Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;)V

    .line 3902
    :cond_2
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3920
    .end local v3           #network:Ljava/lang/String;
    :cond_3
    iget-object v8, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v8, v8, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #calls: Lcom/android/server/QcConnectivityService;->flushVmDnsCache()V
    invoke-static {v8}, Lcom/android/server/QcConnectivityService;->access$13700(Lcom/android/server/QcConnectivityService;)V

    goto :goto_0

    .line 3902
    .restart local v3       #network:Ljava/lang/String;
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 3905
    .end local v3           #network:Ljava/lang/String;
    :cond_4
    :try_start_2
    iget-object v8, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v8, v8, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mNetd:Landroid/os/INetworkManagementService;
    invoke-static {v8}, Lcom/android/server/QcConnectivityService;->access$12900(Lcom/android/server/QcConnectivityService;)Landroid/os/INetworkManagementService;

    move-result-object v8

    invoke-virtual {v5}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0}, Landroid/net/NetworkUtils;->makeStrings(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5}, Landroid/net/LinkProperties;->getDomains()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v9, v10, v11}, Landroid/os/INetworkManagementService;->setDnsServersForInterface(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 3911
    :goto_1
    iget-object v8, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v8, v8, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mNetRequestersPids:[Ljava/util/List;
    invoke-static {v8}, Lcom/android/server/QcConnectivityService;->access$14000(Lcom/android/server/QcConnectivityService;)[Ljava/util/List;

    move-result-object v8

    aget-object v7, v8, p1

    .line 3912
    .local v7, pids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 3914
    .local v6, pid:Ljava/lang/Integer;
    :try_start_3
    iget-object v8, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v8, v8, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mNetd:Landroid/os/INetworkManagementService;
    invoke-static {v8}, Lcom/android/server/QcConnectivityService;->access$12900(Lcom/android/server/QcConnectivityService;)Landroid/os/INetworkManagementService;

    move-result-object v8

    invoke-virtual {v5}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v8, v9, v10}, Landroid/os/INetworkManagementService;->setDnsInterfaceForPid(Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 3915
    :catch_0
    move-exception v1

    .line 3916
    .local v1, e:Ljava/lang/Exception;
    const-string v8, "QcConnectivityService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "exception setting interface for pid: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 3907
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v6           #pid:Ljava/lang/Integer;
    .end local v7           #pids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    :catch_1
    move-exception v1

    .line 3908
    .restart local v1       #e:Ljava/lang/Exception;
    iget-object v8, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "exception setting dns servers: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->loge(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$13900(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected handleDnsReprioritization(II)V
    .locals 4
    .parameter "netType"
    .parameter "netTypeSecondary"

    .prologue
    .line 3858
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v2}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$13100(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " handleDnsReprioritization"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$13200(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 3860
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #getter for: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->mConnectedDefaultNetworks:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;
    invoke-static {v0}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$6400(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;->contains(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3861
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot prioritize dns for unsupported type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->logw(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$13300(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 3883
    :cond_0
    :goto_0
    return-void

    .line 3865
    :cond_1
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Prioritizing Dns for network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$13400(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 3867
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mDnsLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/QcConnectivityService;->access$13500(Lcom/android/server/QcConnectivityService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3868
    :try_start_0
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #setter for: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->myDefaultDnsNet:I
    invoke-static {v0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$6002(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;I)I

    .line 3869
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #setter for: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->otherDefaultDnsNet:I
    invoke-static {v0, p2}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$6102(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;I)I

    .line 3870
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mDnsOverridden:Z
    invoke-static {v0}, Lcom/android/server/QcConnectivityService;->access$13600(Lcom/android/server/QcConnectivityService;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3871
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->updateDnsLocked(Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;)V

    .line 3873
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3874
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #calls: Lcom/android/server/QcConnectivityService;->flushVmDnsCache()V
    invoke-static {v0}, Lcom/android/server/QcConnectivityService;->access$13700(Lcom/android/server/QcConnectivityService;)V

    .line 3876
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mClat:Lcom/android/server/connectivity/Nat464Xlat;
    invoke-static {v0}, Lcom/android/server/QcConnectivityService;->access$13800(Lcom/android/server/QcConnectivityService;)Lcom/android/server/connectivity/Nat464Xlat;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v1, v1, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v1}, Lcom/android/server/QcConnectivityService;->access$900(Lcom/android/server/QcConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/connectivity/Nat464Xlat;->requiresClat(ILandroid/net/NetworkStateTracker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3878
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mClat:Lcom/android/server/connectivity/Nat464Xlat;
    invoke-static {v0}, Lcom/android/server/QcConnectivityService;->access$13800(Lcom/android/server/QcConnectivityService;)Lcom/android/server/connectivity/Nat464Xlat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/connectivity/Nat464Xlat;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mClat:Lcom/android/server/connectivity/Nat464Xlat;
    invoke-static {v0}, Lcom/android/server/QcConnectivityService;->access$13800(Lcom/android/server/QcConnectivityService;)Lcom/android/server/connectivity/Nat464Xlat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/connectivity/Nat464Xlat;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3879
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mClat:Lcom/android/server/connectivity/Nat464Xlat;
    invoke-static {v0}, Lcom/android/server/QcConnectivityService;->access$13800(Lcom/android/server/QcConnectivityService;)Lcom/android/server/connectivity/Nat464Xlat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/connectivity/Nat464Xlat;->stopClat()V

    .line 3880
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mClat:Lcom/android/server/connectivity/Nat464Xlat;
    invoke-static {v0}, Lcom/android/server/QcConnectivityService;->access$13800(Lcom/android/server/QcConnectivityService;)Lcom/android/server/connectivity/Nat464Xlat;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v1, v1, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v1}, Lcom/android/server/QcConnectivityService;->access$900(Lcom/android/server/QcConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/Nat464Xlat;->startClat(Landroid/net/NetworkStateTracker;)V

    goto/16 :goto_0

    .line 3873
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected handleInetConditionChange(II)Z
    .locals 7
    .parameter "netType"
    .parameter "condition"

    .prologue
    const/4 v1, 0x1

    .line 4139
    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v4}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$15600(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " handleInetConditionChange"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$15700(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 4140
    iget v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->otherDefaultNet:I

    if-eq p1, v2, :cond_0

    .line 4141
    const/4 v1, 0x0

    .line 4172
    :goto_0
    return v1

    .line 4145
    :cond_0
    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleInetConditionChange: net="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", condition="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", for other active default Network="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$15800(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 4150
    iput p2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->mOtherDefaultInetCondition:I

    .line 4152
    iget-boolean v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->mOtherInetConditionChangeInFlight:Z

    if-nez v2, :cond_2

    .line 4153
    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    const-string v3, "handleInetConditionChange: starting a change hold"

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$15900(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 4155
    iget v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->mOtherDefaultInetCondition:I

    const/16 v3, 0x32

    if-le v2, v3, :cond_1

    .line 4156
    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v2, v2, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/QcConnectivityService;->access$1000(Lcom/android/server/QcConnectivityService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "inet_condition_debounce_up_delay"

    const/16 v4, 0x1f4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 4162
    .local v0, delay:I
    :goto_1
    iput-boolean v1, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->mOtherInetConditionChangeInFlight:Z

    .line 4163
    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v3, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    const/16 v4, 0x69

    iget v5, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->otherDefaultNet:I

    iget v6, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->mOtherDefaultConnectionSequence:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    int-to-long v4, v0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->sendMessageDelayed(Landroid/os/Message;J)V

    goto :goto_0

    .line 4159
    .end local v0           #delay:I
    :cond_1
    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v2, v2, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/QcConnectivityService;->access$1000(Lcom/android/server/QcConnectivityService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "inet_condition_debounce_down_delay"

    const/16 v4, 0xbb8

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .restart local v0       #delay:I
    goto :goto_1

    .line 4168
    .end local v0           #delay:I
    :cond_2
    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    const-string v3, "handleInetConditionChange: currently in hold - not setting new end evt"

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$16000(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected handleInetConditionHoldEnd(II)Z
    .locals 6
    .parameter "netType"
    .parameter "sequence"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 4181
    iget-object v3, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v5}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$16100(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " handleInetConditionHoldEnd"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$16200(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 4182
    iget v3, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->otherDefaultNet:I

    if-eq p1, v3, :cond_0

    .line 4209
    :goto_0
    return v1

    .line 4187
    :cond_0
    iget-object v3, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleInetConditionHoldEnd: net="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", condition="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->mOtherDefaultInetCondition:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", published condition="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->mOtherDefaultInetConditionPublished:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$16300(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 4191
    iput-boolean v1, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->mOtherInetConditionChangeInFlight:Z

    .line 4193
    iget v1, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->mOtherDefaultConnectionSequence:I

    if-eq v1, p2, :cond_1

    .line 4195
    iget-object v1, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    const-string v3, "handleInetConditionHoldEnd: event hold for obsolete network - ignoring"

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v1, v3}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$16400(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    move v1, v2

    .line 4198
    goto :goto_0

    .line 4201
    :cond_1
    iget-object v1, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v1, v1, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v1}, Lcom/android/server/QcConnectivityService;->access$900(Lcom/android/server/QcConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v1

    iget v3, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->otherDefaultNet:I

    aget-object v1, v1, v3

    invoke-interface {v1}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 4202
    .local v0, networkInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_2

    .line 4203
    iget-object v1, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleInetConditionHoldEnd: default network "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not connected - ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v1, v3}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$16500(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    move v1, v2

    .line 4205
    goto :goto_0

    .line 4207
    :cond_2
    iget v1, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->mOtherDefaultInetCondition:I

    iput v1, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->mOtherDefaultInetConditionPublished:I

    .line 4208
    iget-object v1, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v1, v1, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #calls: Lcom/android/server/QcConnectivityService;->sendInetConditionBroadcast(Landroid/net/NetworkInfo;)V
    invoke-static {v1, v0}, Lcom/android/server/QcConnectivityService;->access$16600(Lcom/android/server/QcConnectivityService;Landroid/net/NetworkInfo;)V

    move v1, v2

    .line 4209
    goto/16 :goto_0
.end method

.method protected isHigherPriorityNet(I)Z
    .locals 4
    .parameter "type"

    .prologue
    .line 4044
    iget-object v1, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v3}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$14600(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isHigherPriorityNet"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$14700(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 4045
    const/4 v0, 0x0

    .line 4046
    .local v0, ret:Z
    iget-object v1, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #getter for: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->mConnectedDefaultNetworks:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;
    invoke-static {v1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$6400(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;->isHigherPriorityNetwork(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4049
    iget-object v1, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v1, v1, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v2, v2, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v2}, Lcom/android/server/QcConnectivityService;->access$900(Lcom/android/server/QcConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v2

    iget v3, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->otherDefaultNet:I

    aget-object v2, v2, v3

    #calls: Lcom/android/server/QcConnectivityService;->teardown(Landroid/net/NetworkStateTracker;)Z
    invoke-static {v1, v2}, Lcom/android/server/QcConnectivityService;->access$14800(Lcom/android/server/QcConnectivityService;Landroid/net/NetworkStateTracker;)Z

    .line 4050
    iget-object v1, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #getter for: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->mConnectedDefaultNetworks:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;
    invoke-static {v1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$6400(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;

    move-result-object v1

    iget v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->otherDefaultNet:I

    invoke-virtual {v1, v2}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;->remove(I)Z

    .line 4051
    iget-object v1, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v1, v1, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v2, v2, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v2}, Lcom/android/server/QcConnectivityService;->access$900(Lcom/android/server/QcConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v2

    iget v3, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->myDefaultNet:I

    aget-object v2, v2, v3

    #calls: Lcom/android/server/QcConnectivityService;->teardown(Landroid/net/NetworkStateTracker;)Z
    invoke-static {v1, v2}, Lcom/android/server/QcConnectivityService;->access$14800(Lcom/android/server/QcConnectivityService;Landroid/net/NetworkStateTracker;)Z

    .line 4052
    iget-object v1, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #getter for: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->mConnectedDefaultNetworks:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;
    invoke-static {v1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$6400(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;

    move-result-object v1

    iget v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->myDefaultNet:I

    invoke-virtual {v1, v2}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;->remove(I)Z

    .line 4053
    const/4 v0, 0x1

    .line 4057
    :goto_0
    return v0

    .line 4055
    :cond_0
    iget-object v1, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v1, v1, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v2, v2, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v2}, Lcom/android/server/QcConnectivityService;->access$900(Lcom/android/server/QcConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v2

    aget-object v2, v2, p1

    #calls: Lcom/android/server/QcConnectivityService;->teardown(Landroid/net/NetworkStateTracker;)Z
    invoke-static {v1, v2}, Lcom/android/server/QcConnectivityService;->access$14800(Lcom/android/server/QcConnectivityService;Landroid/net/NetworkStateTracker;)Z

    goto :goto_0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 14
    .parameter "msg"

    .prologue
    .line 3529
    iget-object v11, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v13}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$9400(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v13

    invoke-interface {v13}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".processMessage what="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p1, Landroid/os/Message;->what:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$9500(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 3531
    const/4 v7, 0x0

    .line 3532
    .local v7, ret:Z
    iget v11, p1, Landroid/os/Message;->what:I

    sparse-switch v11, :sswitch_data_0

    .line 3666
    const/4 v7, 0x0

    .line 3668
    iget-object v11, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v13}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$10800(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v13

    invoke-interface {v13}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": no handler for message="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p1, Landroid/os/Message;->what:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$10900(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 3672
    :cond_0
    :goto_0
    :sswitch_0
    return v7

    .line 3535
    :sswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/NetworkInfo;

    .line 3536
    .local v2, info:Landroid/net/NetworkInfo;
    invoke-virtual {p0, v2}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->handleConnect(Landroid/net/NetworkInfo;)I

    move-result v5

    .line 3537
    .local v5, r:I
    if-nez v5, :cond_1

    .line 3538
    const/4 v7, 0x1

    goto :goto_0

    .line 3539
    :cond_1
    const/4 v11, -0x1

    if-ne v5, v11, :cond_2

    .line 3540
    const/4 v7, 0x0

    goto :goto_0

    .line 3542
    :cond_2
    iget-object v11, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->deferMessage(Landroid/os/Message;)V
    invoke-static {v11, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$9600(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Landroid/os/Message;)V

    .line 3543
    iget-object v11, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v12, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #getter for: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->mSmartConnectivityState:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;
    invoke-static {v12}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$9700(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;

    move-result-object v12

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v11, v12}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$9800(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Lcom/android/internal/util/IState;)V

    .line 3544
    const/4 v7, 0x1

    .line 3546
    goto :goto_0

    .line 3550
    .end local v2           #info:Landroid/net/NetworkInfo;
    .end local v5           #r:I
    :sswitch_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/NetworkInfo;

    .line 3551
    .restart local v2       #info:Landroid/net/NetworkInfo;
    invoke-virtual {p0, v2}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->handleDisconnect(Landroid/net/NetworkInfo;)I

    move-result v5

    .line 3552
    .restart local v5       #r:I
    if-nez v5, :cond_3

    .line 3553
    const/4 v7, 0x0

    goto :goto_0

    .line 3554
    :cond_3
    const/4 v11, -0x1

    if-ne v5, v11, :cond_4

    .line 3555
    iget-object v11, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->deferMessage(Landroid/os/Message;)V
    invoke-static {v11, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$9900(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Landroid/os/Message;)V

    .line 3556
    iget-object v11, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v12, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #getter for: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->mSmartConnectivityState:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;
    invoke-static {v12}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$9700(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;

    move-result-object v12

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v11, v12}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$10000(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Lcom/android/internal/util/IState;)V

    .line 3557
    const/4 v7, 0x1

    goto :goto_0

    .line 3559
    :cond_4
    iget-object v11, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v12, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #getter for: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->mSmartConnectivityState:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;
    invoke-static {v12}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$9700(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;

    move-result-object v12

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v11, v12}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$10100(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Lcom/android/internal/util/IState;)V

    .line 3560
    const/4 v7, 0x1

    .line 3562
    goto :goto_0

    .line 3566
    .end local v2           #info:Landroid/net/NetworkInfo;
    .end local v5           #r:I
    :sswitch_3
    iget v10, p1, Landroid/os/Message;->arg1:I

    .line 3567
    .local v10, type:I
    iget v11, p1, Landroid/os/Message;->arg2:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_5

    const/4 v1, 0x1

    .line 3568
    .local v1, doReset:Z
    :goto_1
    const/4 v11, 0x1

    invoke-direct {p0, v10, v1, v11}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->handleConnectivityChange(IZZ)V

    .line 3569
    const/4 v7, 0x1

    .line 3570
    goto :goto_0

    .line 3567
    .end local v1           #doReset:Z
    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    .line 3574
    .end local v10           #type:I
    :sswitch_4
    iget v10, p1, Landroid/os/Message;->arg1:I

    .line 3575
    .restart local v10       #type:I
    invoke-virtual {p0, v10}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->handleDnsConfigurationChange(I)V

    .line 3576
    const/4 v7, 0x1

    .line 3577
    goto :goto_0

    .line 3583
    .end local v10           #type:I
    :sswitch_5
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 3584
    .local v3, netType:I
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 3585
    .local v0, condition:I
    invoke-virtual {p0, v3, v0}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->handleInetConditionChange(II)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 3586
    const/4 v7, 0x1

    goto :goto_0

    .line 3592
    .end local v0           #condition:I
    .end local v3           #netType:I
    :sswitch_6
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 3593
    .restart local v3       #netType:I
    iget v9, p1, Landroid/os/Message;->arg2:I

    .line 3594
    .local v9, sequence:I
    invoke-virtual {p0, v3, v9}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->handleInetConditionHoldEnd(II)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 3595
    const/4 v7, 0x1

    goto :goto_0

    .line 3601
    .end local v3           #netType:I
    .end local v9           #sequence:I
    :sswitch_7
    iget-object v11, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    const-string v12, "NetTransition wakelock is not needed"

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$10200(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 3602
    const/4 v7, 0x1

    .line 3603
    goto/16 :goto_0

    .line 3607
    :sswitch_8
    iget-object v11, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    const-string v12, "enforcing network preference not allowed in dual connectivity state"

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->loge(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$10300(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 3608
    const/4 v7, 0x1

    .line 3609
    goto/16 :goto_0

    .line 3613
    :sswitch_9
    iget-object v11, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #getter for: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->myDefaultDnsNet:I
    invoke-static {v11}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$6000(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->handleDnsConfigurationChange(I)V

    .line 3614
    const/4 v7, 0x1

    .line 3615
    goto/16 :goto_0

    .line 3619
    :sswitch_a
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 3620
    .local v6, reason:Ljava/lang/String;
    iget v10, p1, Landroid/os/Message;->arg1:I

    .line 3621
    .restart local v10       #type:I
    invoke-virtual {p0, v10, v6}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->handleConnectivitySwitch(ILjava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 3622
    iget-object v11, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->deferMessage(Landroid/os/Message;)V
    invoke-static {v11, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$10400(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Landroid/os/Message;)V

    .line 3623
    invoke-virtual {p0}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->transitionToOther()V

    .line 3625
    :cond_6
    const/4 v7, 0x1

    .line 3626
    goto/16 :goto_0

    .line 3630
    .end local v6           #reason:Ljava/lang/String;
    .end local v10           #type:I
    :sswitch_b
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 3631
    .local v4, primary:I
    iget v8, p1, Landroid/os/Message;->arg2:I

    .line 3632
    .local v8, secondary:I
    iget-object v11, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #getter for: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->myDefaultDnsNet:I
    invoke-static {v11}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$6000(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)I

    move-result v11

    if-ne v11, v4, :cond_7

    iget-object v11, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #getter for: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->otherDefaultDnsNet:I
    invoke-static {v11}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$6100(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)I

    move-result v11

    if-eq v11, v8, :cond_8

    .line 3635
    :cond_7
    invoke-virtual {p0, v4, v8}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->handleDnsReprioritization(II)V

    .line 3644
    :goto_2
    const/4 v7, 0x1

    .line 3645
    goto/16 :goto_0

    .line 3639
    :cond_8
    iget-object v11, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Dns is already prioritized for network p "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " s "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->logw(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$10500(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    goto :goto_2

    .line 3649
    .end local v4           #primary:I
    .end local v8           #secondary:I
    :sswitch_c
    iget-object v11, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->deferMessage(Landroid/os/Message;)V
    invoke-static {v11, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$10600(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Landroid/os/Message;)V

    .line 3650
    const/4 v7, 0x1

    .line 3651
    goto/16 :goto_0

    .line 3655
    :sswitch_d
    iget v10, p1, Landroid/os/Message;->arg1:I

    .line 3656
    .restart local v10       #type:I
    iget v11, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->myDefaultNet:I

    if-ne v10, v11, :cond_9

    .line 3657
    iget-object v11, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v11, v11, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    iget-object v12, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v12, v12, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v12}, Lcom/android/server/QcConnectivityService;->access$900(Lcom/android/server/QcConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v12

    iget v13, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->myDefaultNet:I

    aget-object v12, v12, v13

    #calls: Lcom/android/server/QcConnectivityService;->updateNetworkSettings(Landroid/net/NetworkStateTracker;)V
    invoke-static {v11, v12}, Lcom/android/server/QcConnectivityService;->access$5400(Lcom/android/server/QcConnectivityService;Landroid/net/NetworkStateTracker;)V

    .line 3661
    :goto_3
    const/4 v7, 0x1

    .line 3662
    goto/16 :goto_0

    .line 3659
    :cond_9
    iget-object v11, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    const-string v12, "ingoring subType change for other default net"

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->logd(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$10700(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    goto :goto_3

    .line 3532
    :sswitch_data_0
    .sparse-switch
        0x1f6 -> :sswitch_b
        0x1f7 -> :sswitch_a
        0x1f8 -> :sswitch_c
        0x1389 -> :sswitch_1
        0x138a -> :sswitch_2
        0x138b -> :sswitch_3
        0x138c -> :sswitch_4
        0x138d -> :sswitch_0
        0x138e -> :sswitch_5
        0x138f -> :sswitch_6
        0x1390 -> :sswitch_8
        0x1391 -> :sswitch_9
        0x1393 -> :sswitch_7
        0x1394 -> :sswitch_d
    .end sparse-switch
.end method

.method protected removeDefaultRoutes(I)V
    .locals 9
    .parameter "netType"

    .prologue
    const/4 v8, 0x1

    .line 4375
    iget-object v5, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v7}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$18200(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " removeDefaultRoutes"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$18300(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 4376
    const/4 v5, -0x1

    if-ne p1, v5, :cond_2

    .line 4377
    iget-object v5, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    const-string v6, "removing default routes for all networks"

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$18400(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 4378
    iget-object v5, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #getter for: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->mConnectedDefaultNetworks:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;
    invoke-static {v5}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$6400(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;->getActiveDefaults()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 4379
    .local v4, type:Ljava/lang/Integer;
    iget-object v5, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v5, v5, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mCurrentLinkProperties:[Landroid/net/LinkProperties;
    invoke-static {v5}, Lcom/android/server/QcConnectivityService;->access$16900(Lcom/android/server/QcConnectivityService;)[Landroid/net/LinkProperties;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object v2, v5, v6

    .line 4380
    .local v2, p:Landroid/net/LinkProperties;
    if-eqz v2, :cond_0

    .line 4381
    invoke-virtual {v2}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/RouteInfo;

    .line 4382
    .local v3, r:Landroid/net/RouteInfo;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4383
    iget-object v5, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v5, v5, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #calls: Lcom/android/server/QcConnectivityService;->removeRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;Z)Z
    invoke-static {v5, v2, v3, v8}, Lcom/android/server/QcConnectivityService;->access$18500(Lcom/android/server/QcConnectivityService;Landroid/net/LinkProperties;Landroid/net/RouteInfo;Z)Z

    goto :goto_0

    .line 4387
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #p:Landroid/net/LinkProperties;
    .end local v3           #r:Landroid/net/RouteInfo;
    .end local v4           #type:Ljava/lang/Integer;
    :cond_2
    iget-object v5, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #getter for: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->mConnectedDefaultNetworks:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;
    invoke-static {v5}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$6400(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;->contains(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 4388
    iget-object v5, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removing default routes for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$18600(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 4389
    iget-object v5, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v5, v5, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mCurrentLinkProperties:[Landroid/net/LinkProperties;
    invoke-static {v5}, Lcom/android/server/QcConnectivityService;->access$16900(Lcom/android/server/QcConnectivityService;)[Landroid/net/LinkProperties;

    move-result-object v5

    aget-object v2, v5, p1

    .line 4390
    .restart local v2       #p:Landroid/net/LinkProperties;
    if-nez v2, :cond_4

    .line 4397
    .end local v2           #p:Landroid/net/LinkProperties;
    :cond_3
    return-void

    .line 4391
    .restart local v2       #p:Landroid/net/LinkProperties;
    :cond_4
    invoke-virtual {v2}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/RouteInfo;

    .line 4392
    .restart local v3       #r:Landroid/net/RouteInfo;
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 4393
    iget-object v5, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v5, v5, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #calls: Lcom/android/server/QcConnectivityService;->removeRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;Z)Z
    invoke-static {v5, v2, v3, v8}, Lcom/android/server/QcConnectivityService;->access$18500(Lcom/android/server/QcConnectivityService;Landroid/net/LinkProperties;Landroid/net/RouteInfo;Z)Z

    goto :goto_1
.end method

.method protected runOnEnter()V
    .locals 3

    .prologue
    .line 3680
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v2}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$11000(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " runOnEnter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$11100(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 3682
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mRouteAttributes:[Lcom/android/server/QcConnectivityService$RouteAttributes;
    invoke-static {v0}, Lcom/android/server/QcConnectivityService;->access$5900(Lcom/android/server/QcConnectivityService;)[Lcom/android/server/QcConnectivityService$RouteAttributes;

    move-result-object v0

    iget v1, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->myDefaultNet:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/QcConnectivityService$RouteAttributes;->setMetric(I)V

    .line 3683
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mRouteAttributes:[Lcom/android/server/QcConnectivityService$RouteAttributes;
    invoke-static {v0}, Lcom/android/server/QcConnectivityService;->access$5900(Lcom/android/server/QcConnectivityService;)[Lcom/android/server/QcConnectivityService$RouteAttributes;

    move-result-object v0

    iget v1, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->otherDefaultNet:I

    aget-object v0, v0, v1

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Lcom/android/server/QcConnectivityService$RouteAttributes;->setMetric(I)V

    .line 3684
    iget v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->myDefaultNet:I

    invoke-virtual {p0, v0}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->updateDefaultRouteMetric(I)V

    .line 3685
    return-void
.end method

.method protected sendConnectivitySwitchBroadcast(Ljava/lang/String;)V
    .locals 6
    .parameter "reason"

    .prologue
    .line 3703
    iget-object v3, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v5}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$11200(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sendConnectivitySwitchBroadcast"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$11300(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 3705
    iget-object v3, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v3, v3, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v3}, Lcom/android/server/QcConnectivityService;->access$900(Lcom/android/server/QcConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v3

    iget v4, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->myDefaultNet:I

    aget-object v3, v3, v4

    invoke-interface {v3}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 3707
    .local v2, newNetInfo:Landroid/net/NetworkInfo;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3708
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "networkInfo"

    new-instance v4, Landroid/net/NetworkInfo;

    invoke-direct {v4, v2}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3709
    const-string v3, "networkType"

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3710
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 3711
    const-string v3, "reason"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3713
    :cond_0
    const-string v3, "isFailover"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3714
    const-string v3, "inetCondition"

    iget-object v4, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v4, v4, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mDefaultInetConditionPublished:I
    invoke-static {v4}, Lcom/android/server/QcConnectivityService;->access$11400(Lcom/android/server/QcConnectivityService;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3717
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 3718
    .local v0, immediateIntent:Landroid/content/Intent;
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3719
    iget-object v3, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v3, v3, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #calls: Lcom/android/server/QcConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V
    invoke-static {v3, v0}, Lcom/android/server/QcConnectivityService;->access$3900(Lcom/android/server/QcConnectivityService;Landroid/content/Intent;)V

    .line 3720
    iget-object v3, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v3, v3, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #calls: Lcom/android/server/QcConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V
    invoke-static {v3, v1}, Lcom/android/server/QcConnectivityService;->access$3900(Lcom/android/server/QcConnectivityService;Landroid/content/Intent;)V

    .line 3721
    return-void
.end method

.method protected abstract transitionToOther()V
.end method

.method protected updateDefaultRouteMetric(I)V
    .locals 6
    .parameter "type"

    .prologue
    .line 4359
    iget-object v3, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v5}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$18000(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " updateDefaultRouteMetric"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$18100(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 4360
    iget-object v3, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v3, v3, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mCurrentLinkProperties:[Landroid/net/LinkProperties;
    invoke-static {v3}, Lcom/android/server/QcConnectivityService;->access$16900(Lcom/android/server/QcConnectivityService;)[Landroid/net/LinkProperties;

    move-result-object v3

    aget-object v1, v3, p1

    .line 4361
    .local v1, lp:Landroid/net/LinkProperties;
    if-nez v1, :cond_1

    .line 4367
    :cond_0
    return-void

    .line 4363
    :cond_1
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/RouteInfo;

    .line 4364
    .local v2, r:Landroid/net/RouteInfo;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/RouteInfo;->isHostRoute()Z

    move-result v3

    if-nez v3, :cond_2

    .line 4365
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v4, v4, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mRouteAttributes:[Lcom/android/server/QcConnectivityService$RouteAttributes;
    invoke-static {v4}, Lcom/android/server/QcConnectivityService;->access$5900(Lcom/android/server/QcConnectivityService;)[Lcom/android/server/QcConnectivityService$RouteAttributes;

    move-result-object v4

    aget-object v4, v4, p1

    invoke-virtual {v4}, Lcom/android/server/QcConnectivityService$RouteAttributes;->getMetric()I

    move-result v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->addRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;II)Z

    goto :goto_0
.end method

.method protected updateRoutes(Landroid/net/LinkProperties;Landroid/net/LinkProperties;ZLcom/android/server/QcConnectivityService$RouteAttributes;)Z
    .locals 22
    .parameter "newLp"
    .parameter "curLp"
    .parameter "isLinkDefault"
    .parameter "ra"

    .prologue
    .line 4482
    const/16 v17, 0x0

    .line 4483
    .local v17, routesToAdd:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/RouteInfo;>;"
    new-instance v4, Landroid/net/LinkProperties$CompareResult;

    invoke-direct {v4}, Landroid/net/LinkProperties$CompareResult;-><init>()V

    .line 4484
    .local v4, dnsDiff:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Ljava/net/InetAddress;>;"
    new-instance v15, Landroid/net/LinkProperties$CompareResult;

    invoke-direct {v15}, Landroid/net/LinkProperties$CompareResult;-><init>()V

    .line 4485
    .local v15, routeDiff:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Landroid/net/RouteInfo;>;"
    new-instance v11, Landroid/net/LinkProperties$CompareResult;

    invoke-direct {v11}, Landroid/net/LinkProperties$CompareResult;-><init>()V

    .line 4486
    .local v11, localAddrDiff:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    if-eqz p2, :cond_5

    .line 4488
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->compareRoutes(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$CompareResult;

    move-result-object v15

    .line 4489
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->compareDnses(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$CompareResult;

    move-result-object v4

    .line 4490
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->compareAddresses(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$CompareResult;

    move-result-object v11

    .line 4497
    :cond_0
    :goto_0
    iget-object v0, v15, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->size()I

    move-result v18

    if-nez v18, :cond_1

    iget-object v0, v15, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->size()I

    move-result v18

    if-eqz v18, :cond_6

    :cond_1
    const/16 v16, 0x1

    .line 4499
    .local v16, routesChanged:Z
    :goto_1
    iget-object v0, v15, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/RouteInfo;

    .line 4500
    .local v14, r:Landroid/net/RouteInfo;
    if-nez p3, :cond_3

    invoke-virtual {v14}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v18

    if-nez v18, :cond_4

    .line 4501
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    move/from16 v2, v19

    #calls: Lcom/android/server/QcConnectivityService;->removeRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;Z)Z
    invoke-static {v0, v1, v14, v2}, Lcom/android/server/QcConnectivityService;->access$18500(Lcom/android/server/QcConnectivityService;Landroid/net/LinkProperties;Landroid/net/RouteInfo;Z)Z

    .line 4503
    :cond_4
    if-nez p3, :cond_2

    .line 4505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    move/from16 v2, v19

    #calls: Lcom/android/server/QcConnectivityService;->removeRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;Z)Z
    invoke-static {v0, v1, v14, v2}, Lcom/android/server/QcConnectivityService;->access$18500(Lcom/android/server/QcConnectivityService;Landroid/net/LinkProperties;Landroid/net/RouteInfo;Z)Z

    goto :goto_2

    .line 4491
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v14           #r:Landroid/net/RouteInfo;
    .end local v16           #routesChanged:Z
    :cond_5
    if-eqz p1, :cond_0

    .line 4492
    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/Collection;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v15, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    .line 4493
    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v4, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    .line 4494
    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v11, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    goto :goto_0

    .line 4497
    :cond_6
    const/16 v16, 0x0

    goto :goto_1

    .line 4510
    .restart local v8       #i$:Ljava/util/Iterator;
    .restart local v16       #routesChanged:Z
    :cond_7
    if-eqz v16, :cond_9

    .line 4512
    if-eqz p2, :cond_8

    .line 4513
    invoke-virtual/range {p2 .. p2}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/net/InetAddress;

    .line 4514
    .local v13, oldDns:Ljava/net/InetAddress;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    #calls: Lcom/android/server/QcConnectivityService;->removeRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;)Z
    invoke-static {v0, v1, v13}, Lcom/android/server/QcConnectivityService;->access$19600(Lcom/android/server/QcConnectivityService;Landroid/net/LinkProperties;Ljava/net/InetAddress;)Z

    goto :goto_3

    .line 4517
    .end local v13           #oldDns:Ljava/net/InetAddress;
    :cond_8
    if-eqz p1, :cond_b

    .line 4518
    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/net/InetAddress;

    .line 4519
    .local v12, newDns:Ljava/net/InetAddress;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    #calls: Lcom/android/server/QcConnectivityService;->addRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;)Z
    invoke-static {v0, v1, v12}, Lcom/android/server/QcConnectivityService;->access$19700(Lcom/android/server/QcConnectivityService;Landroid/net/LinkProperties;Ljava/net/InetAddress;)Z

    goto :goto_4

    .line 4524
    .end local v12           #newDns:Ljava/net/InetAddress;
    :cond_9
    iget-object v0, v4, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/net/InetAddress;

    .line 4525
    .restart local v13       #oldDns:Ljava/net/InetAddress;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    #calls: Lcom/android/server/QcConnectivityService;->removeRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;)Z
    invoke-static {v0, v1, v13}, Lcom/android/server/QcConnectivityService;->access$19600(Lcom/android/server/QcConnectivityService;Landroid/net/LinkProperties;Ljava/net/InetAddress;)Z

    goto :goto_5

    .line 4527
    .end local v13           #oldDns:Ljava/net/InetAddress;
    :cond_a
    iget-object v0, v4, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/net/InetAddress;

    .line 4528
    .restart local v12       #newDns:Ljava/net/InetAddress;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    #calls: Lcom/android/server/QcConnectivityService;->addRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;)Z
    invoke-static {v0, v1, v12}, Lcom/android/server/QcConnectivityService;->access$19700(Lcom/android/server/QcConnectivityService;Landroid/net/LinkProperties;Ljava/net/InetAddress;)Z

    goto :goto_6

    .line 4532
    .end local v12           #newDns:Ljava/net/InetAddress;
    :cond_b
    iget-object v0, v15, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_c
    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/RouteInfo;

    .line 4533
    .restart local v14       #r:Landroid/net/RouteInfo;
    if-nez p3, :cond_d

    invoke-virtual {v14}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v18

    if-nez v18, :cond_e

    .line 4535
    :cond_d
    const/16 v18, 0x0

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/QcConnectivityService$RouteAttributes;->getMetric()I

    move-result v19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v14, v2, v3}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->addRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;II)Z

    goto :goto_7

    .line 4538
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v19

    #calls: Lcom/android/server/QcConnectivityService;->addRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;Z)Z
    invoke-static {v0, v1, v14, v2}, Lcom/android/server/QcConnectivityService;->access$19800(Lcom/android/server/QcConnectivityService;Landroid/net/LinkProperties;Landroid/net/RouteInfo;Z)Z

    .line 4542
    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v9

    .line 4543
    .local v9, ifaceName:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/QcConnectivityService;->mAddedRoutes:Ljava/util/Collection;
    invoke-static/range {v18 .. v18}, Lcom/android/server/QcConnectivityService;->access$19200(Lcom/android/server/QcConnectivityService;)Ljava/util/Collection;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_c

    .line 4544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Removing "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " for interface "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$19900(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 4546
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/QcConnectivityService;->mNetd:Landroid/os/INetworkManagementService;
    invoke-static/range {v18 .. v18}, Lcom/android/server/QcConnectivityService;->access$12900(Lcom/android/server/QcConnectivityService;)Landroid/os/INetworkManagementService;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v0, v9, v14}, Landroid/os/INetworkManagementService;->removeRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_7

    .line 4547
    :catch_0
    move-exception v5

    .line 4549
    .local v5, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Exception trying to remove a route: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->loge(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$20000(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 4555
    .end local v5           #e:Ljava/lang/Exception;
    .end local v9           #ifaceName:Ljava/lang/String;
    .end local v14           #r:Landroid/net/RouteInfo;
    :cond_f
    iget-object v0, v11, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->size()I

    move-result v18

    if-eqz v18, :cond_10

    .line 4556
    iget-object v0, v11, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_10

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/LinkAddress;

    .line 4557
    .local v10, la:Landroid/net/LinkAddress;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Removing src route for:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v10}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$20100(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 4559
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/QcConnectivityService;->mNetd:Landroid/os/INetworkManagementService;
    invoke-static/range {v18 .. v18}, Lcom/android/server/QcConnectivityService;->access$12900(Lcom/android/server/QcConnectivityService;)Landroid/os/INetworkManagementService;

    move-result-object v18

    invoke-virtual {v10}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v19

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/QcConnectivityService$RouteAttributes;->getTableId()I

    move-result v20

    invoke-interface/range {v18 .. v20}, Landroid/os/INetworkManagementService;->delSrcRoute([BI)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_8

    .line 4560
    :catch_1
    move-exception v5

    .line 4561
    .restart local v5       #e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Exception while trying to remove src route: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->loge(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$20200(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    goto :goto_8

    .line 4566
    .end local v5           #e:Ljava/lang/Exception;
    .end local v10           #la:Landroid/net/LinkAddress;
    :cond_10
    iget-object v0, v11, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->size()I

    move-result v18

    if-eqz v18, :cond_15

    .line 4567
    const/4 v6, 0x0

    .local v6, gw4Addr:Ljava/net/InetAddress;
    const/4 v7, 0x0

    .line 4568
    .local v7, gw6Addr:Ljava/net/InetAddress;
    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v9

    .line 4569
    .restart local v9       #ifaceName:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_15

    .line 4570
    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_11
    :goto_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_13

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/RouteInfo;

    .line 4571
    .restart local v14       #r:Landroid/net/RouteInfo;
    invoke-virtual {v14}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v18

    if-eqz v18, :cond_11

    .line 4572
    invoke-virtual {v14}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v18

    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/net/Inet4Address;

    move/from16 v18, v0

    if-eqz v18, :cond_12

    .line 4573
    invoke-virtual {v14}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v6

    goto :goto_9

    .line 4575
    :cond_12
    invoke-virtual {v14}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v7

    goto :goto_9

    .line 4577
    .end local v14           #r:Landroid/net/RouteInfo;
    :cond_13
    iget-object v0, v11, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_15

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/LinkAddress;

    .line 4579
    .restart local v10       #la:Landroid/net/LinkAddress;
    :try_start_2
    invoke-virtual {v10}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v18

    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/net/Inet4Address;

    move/from16 v18, v0

    if-eqz v18, :cond_14

    .line 4580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/QcConnectivityService;->mNetd:Landroid/os/INetworkManagementService;
    invoke-static/range {v18 .. v18}, Lcom/android/server/QcConnectivityService;->access$12900(Lcom/android/server/QcConnectivityService;)Landroid/os/INetworkManagementService;

    move-result-object v18

    invoke-virtual {v10}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v19

    invoke-virtual {v6}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v20

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/QcConnectivityService$RouteAttributes;->getTableId()I

    move-result v21

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-interface {v0, v9, v1, v2, v3}, Landroid/os/INetworkManagementService;->replaceSrcRoute(Ljava/lang/String;[B[BI)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_a

    .line 4586
    :catch_2
    move-exception v5

    .line 4588
    .restart local v5       #e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Exception while trying to add src route: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->loge(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$20300(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    goto :goto_a

    .line 4583
    .end local v5           #e:Ljava/lang/Exception;
    :cond_14
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/QcConnectivityService;->mNetd:Landroid/os/INetworkManagementService;
    invoke-static/range {v18 .. v18}, Lcom/android/server/QcConnectivityService;->access$12900(Lcom/android/server/QcConnectivityService;)Landroid/os/INetworkManagementService;

    move-result-object v18

    invoke-virtual {v10}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v19

    invoke-virtual {v7}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v20

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/QcConnectivityService$RouteAttributes;->getTableId()I

    move-result v21

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-interface {v0, v9, v1, v2, v3}, Landroid/os/INetworkManagementService;->replaceSrcRoute(Ljava/lang/String;[B[BI)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_a

    .line 4593
    .end local v6           #gw4Addr:Ljava/net/InetAddress;
    .end local v7           #gw6Addr:Ljava/net/InetAddress;
    .end local v9           #ifaceName:Ljava/lang/String;
    .end local v10           #la:Landroid/net/LinkAddress;
    :cond_15
    return v16
.end method
