.class Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$OngoingGroupRemovalState;
.super Lcom/android/internal/util/State;
.source "WifiP2pService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OngoingGroupRemovalState"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 1984
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$OngoingGroupRemovalState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 0

    .prologue
    .line 1988
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 2
    .parameter "message"

    .prologue
    .line 1993
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 2002
    const/4 v0, 0x0

    .line 2004
    :goto_0
    return v0

    .line 1997
    :pswitch_0
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$OngoingGroupRemovalState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v1, 0x22012

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, p1, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$4200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;I)V

    .line 2004
    const/4 v0, 0x1

    goto :goto_0

    .line 1993
    nop

    :pswitch_data_0
    .packed-switch 0x22010
        :pswitch_0
    .end packed-switch
.end method
