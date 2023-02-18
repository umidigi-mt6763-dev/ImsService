.class public Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;
.super Lcom/android/internal/util/StateMachine;
.source "DataDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/DataDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataConnection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$NwLostCallback;,
        Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$NwAvailableCallback;,
        Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$DisconnectingState;,
        Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActiveState;,
        Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActivatingState;,
        Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$InactiveState;,
        Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$DefaultState;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private mActivatingState:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActivatingState;

.field private mActiveState:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActiveState;

.field private mCapabiliy:I

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mDefaultState:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$DefaultState;

.field private mDisconnectingState:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$DisconnectingState;

.field private mFwInterface:Ljava/lang/String;

.field private mImsNetworkRequests:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mInactiveState:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$InactiveState;

.field private mInterface:Ljava/lang/String;

.field private mNetworkHandle:J

.field private mNetworkId:I

.field private mNwAvailableCallback:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$NwAvailableCallback;

.field private mNwLostCallback:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$NwLostCallback;

.field final synthetic this$0:Lcom/mediatek/ims/internal/DataDispatcher;


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/internal/DataDispatcher;Ljava/lang/String;Landroid/os/Handler;I)V
    .locals 2
    .param p1, "this$0"    # Lcom/mediatek/ims/internal/DataDispatcher;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "mHandler"    # Landroid/os/Handler;
    .param p4, "capability"    # I

    .line 330
    iput-object p1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    .line 331
    invoke-direct {p0, p2, p3}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    .line 309
    const-string v0, "DC-"

    iput-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->TAG:Ljava/lang/String;

    .line 313
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    .line 320
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mNetworkHandle:J

    .line 321
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mInterface:Ljava/lang/String;

    .line 322
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mFwInterface:Ljava/lang/String;

    .line 324
    new-instance v0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$DefaultState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$DefaultState;-><init>(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;Lcom/mediatek/ims/internal/DataDispatcher$1;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mDefaultState:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$DefaultState;

    .line 325
    new-instance v0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$InactiveState;

    invoke-direct {v0, p0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$InactiveState;-><init>(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;Lcom/mediatek/ims/internal/DataDispatcher$1;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mInactiveState:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$InactiveState;

    .line 326
    new-instance v0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActivatingState;

    invoke-direct {v0, p0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActivatingState;-><init>(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;Lcom/mediatek/ims/internal/DataDispatcher$1;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mActivatingState:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActivatingState;

    .line 327
    new-instance v0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActiveState;

    invoke-direct {v0, p0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActiveState;-><init>(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;Lcom/mediatek/ims/internal/DataDispatcher$1;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mActiveState:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActiveState;

    .line 328
    new-instance v0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$DisconnectingState;

    invoke-direct {v0, p0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$DisconnectingState;-><init>(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;Lcom/mediatek/ims/internal/DataDispatcher$1;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mDisconnectingState:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$DisconnectingState;

    .line 332
    iput p4, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mCapabiliy:I

    .line 333
    nop

    .line 334
    invoke-static {p1}, Lcom/mediatek/ims/internal/DataDispatcher;->access$900(Lcom/mediatek/ims/internal/DataDispatcher;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 335
    new-instance v0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$NwAvailableCallback;

    invoke-direct {v0, p0, p0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$NwAvailableCallback;-><init>(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mNwAvailableCallback:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$NwAvailableCallback;

    .line 336
    new-instance v0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$NwLostCallback;

    invoke-direct {v0, p0, p0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$NwLostCallback;-><init>(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mNwLostCallback:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$NwLostCallback;

    .line 338
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mDefaultState:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$DefaultState;

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->addState(Lcom/android/internal/util/State;)V

    .line 339
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mInactiveState:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$InactiveState;

    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mDefaultState:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 340
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mActivatingState:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActivatingState;

    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mDefaultState:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 341
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mActiveState:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActiveState;

    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mDefaultState:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 342
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mDisconnectingState:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$DisconnectingState;

    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mDefaultState:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 343
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mInactiveState:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$InactiveState;

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->setInitialState(Lcom/android/internal/util/State;)V

    .line 344
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->start()V

    .line 345
    return-void
.end method

.method static synthetic access$1000(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;
    .param p1, "x1"    # I

    .line 307
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->msgToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;
    .param p1, "x1"    # I

    .line 307
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->rejectNetworkRequest(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;
    .param p1, "x1"    # I

    .line 307
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->rejectNetworkReleased(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    .line 307
    invoke-direct {p0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->requestNetwork()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;)Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActivatingState;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    .line 307
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mActivatingState:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActivatingState;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    .line 307
    invoke-direct {p0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->releaseNetwork()V

    return-void
.end method

.method static synthetic access$1700(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    .line 307
    invoke-direct {p0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->onAbortNetworkCompleted()V

    return-void
.end method

.method static synthetic access$1800(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    .line 307
    invoke-direct {p0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->onReleaseNetworkCompleted()V

    return-void
.end method

.method static synthetic access$1900(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;
    .param p1, "x1"    # Z

    .line 307
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->clearNwInfo(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;)Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$InactiveState;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    .line 307
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mInactiveState:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$InactiveState;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;)Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActiveState;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    .line 307
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mActiveState:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$ActiveState;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;
    .param p1, "x1"    # Z

    .line 307
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->setFirewallInterfaceChain(Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    .line 307
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mFwInterface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;
    .param p1, "x1"    # Ljava/lang/String;

    .line 307
    iput-object p1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mFwInterface:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    .line 307
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mInterface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;
    .param p1, "x1"    # Ljava/lang/String;

    .line 307
    iput-object p1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mInterface:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;)Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$DisconnectingState;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    .line 307
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mDisconnectingState:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$DisconnectingState;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    .line 307
    invoke-direct {p0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->onRequestNetworkCompleted()V

    return-void
.end method

.method static synthetic access$2700(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    .line 307
    invoke-direct {p0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->notifyNetworkLosted()V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    .line 307
    invoke-direct {p0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->disable()V

    return-void
.end method

.method static synthetic access$3000(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    .line 307
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;
    .param p1, "x1"    # I

    .line 307
    iput p1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mNetworkId:I

    return p1
.end method

.method static synthetic access$3202(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;J)J
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;
    .param p1, "x1"    # J

    .line 307
    iput-wide p1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mNetworkHandle:J

    return-wide p1
.end method

.method private clearNwInfo(Z)V
    .locals 2
    .param p1, "disable"    # Z

    .line 739
    const-string v0, "clearNwInfo"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->logd(Ljava/lang/String;)V

    .line 740
    if-eqz p1, :cond_0

    .line 741
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 743
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mNetworkId:I

    .line 744
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mNetworkHandle:J

    .line 745
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mInterface:Ljava/lang/String;

    .line 746
    return-void
.end method

.method private disable()V
    .locals 1

    .line 735
    const v0, 0xaae61

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->sendMessage(Landroid/os/Message;)V

    .line 736
    return-void
.end method

.method private msgToString(I)Ljava/lang/String;
    .locals 2
    .param p1, "msg"    # I

    .line 827
    const v0, 0xaae61

    if-eq p1, v0, :cond_3

    const v0, 0xdbba8

    if-eq p1, v0, :cond_2

    const v0, 0xdbbab

    if-eq p1, v0, :cond_1

    const v0, 0xdbd33

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 844
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 843
    :pswitch_0
    const-string v0, "MSG_ID_WRAP_IMSM_IMSPA_PDN_ABORT"

    return-object v0

    .line 839
    :pswitch_1
    const-string v0, "MSG_ID_WRAP_IMSM_IMSPA_PDN_ACT_FAIL"

    return-object v0

    .line 837
    :pswitch_2
    const-string v0, "MSG_ID_WRAP_IMSM_IMSPA_PDN_DEACT_COMPLETED"

    return-object v0

    .line 835
    :pswitch_3
    const-string v0, "MSG_ID_WRAP_IMSM_IMSPA_PDN_ACT_COMPLETED"

    return-object v0

    .line 833
    :cond_0
    const-string v0, "MSG_ID_REQUEST_PCSCF_DISCOVERY"

    return-object v0

    .line 831
    :cond_1
    const-string v0, "MSG_ID_WRAP_IMSM_IMSPA_PDN_DEACT_REQ"

    return-object v0

    .line 829
    :cond_2
    const-string v0, "MSG_ID_WRAP_IMSM_IMSPA_PDN_ACT_REQ"

    return-object v0

    .line 841
    :cond_3
    const-string v0, "MSG_ID_IMSA_DISABLE_SERVICE"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0xc3501
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private notifyNetworkHandle()V
    .locals 5

    .line 638
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyNetworkHandle() netHandle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mNetworkHandle:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->log(Ljava/lang/String;)V

    .line 639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 640
    .local v0, "builder":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v2}, Lcom/mediatek/ims/internal/DataDispatcher;->access$2800(Lcom/mediatek/ims/internal/DataDispatcher;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    iget-wide v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mNetworkHandle:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 642
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v2}, Lcom/mediatek/ims/internal/DataDispatcher;->access$2900(Lcom/mediatek/ims/internal/DataDispatcher;)Lcom/mediatek/ims/internal/DataDispatcherUtil;

    move-result-object v2

    .line 644
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 642
    const v4, 0xdbccd

    invoke-virtual {v2, v4, v3}, Lcom/mediatek/ims/internal/DataDispatcherUtil;->enCodeEvent(ILjava/lang/String;)Lcom/mediatek/ims/ImsAdapter$VaEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/internal/DataDispatcher;->sendVaEvent(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V

    .line 645
    return-void
.end method

.method private notifyNetworkLosted()V
    .locals 5

    .line 717
    const-string v0, "notifyNetworkLosted"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->logd(Ljava/lang/String;)V

    .line 720
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mNwAvailableCallback:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$NwAvailableCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 723
    goto :goto_0

    .line 721
    :catch_0
    move-exception v0

    .line 722
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const-string v1, "cb already has been released!!"

    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->loge(Ljava/lang/String;)V

    .line 725
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 726
    .local v0, "builder":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v2}, Lcom/mediatek/ims/internal/DataDispatcher;->access$2800(Lcom/mediatek/ims/internal/DataDispatcher;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v2}, Lcom/mediatek/ims/internal/DataDispatcher;->access$1100(Lcom/mediatek/ims/internal/DataDispatcher;)Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "LOST_CONNECTION"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mInterface:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v2}, Lcom/mediatek/ims/internal/DataDispatcher;->access$2900(Lcom/mediatek/ims/internal/DataDispatcher;)Lcom/mediatek/ims/internal/DataDispatcherUtil;

    move-result-object v2

    const v3, 0xdbbae

    .line 730
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 729
    invoke-virtual {v2, v3, v4}, Lcom/mediatek/ims/internal/DataDispatcherUtil;->enCodeEvent(ILjava/lang/String;)Lcom/mediatek/ims/ImsAdapter$VaEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/internal/DataDispatcher;->sendVaEvent(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V

    .line 731
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->clearNwInfo(Z)V

    .line 732
    return-void
.end method

.method private onAbortNetworkCompleted()V
    .locals 7

    .line 698
    const-string v0, "onAbortNetworkCompleted"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->logd(Ljava/lang/String;)V

    .line 699
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    const v1, 0xc3504

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;

    .line 700
    .local v0, "n":Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 701
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "found Req: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->logd(Ljava/lang/String;)V

    .line 700
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 703
    .end local v2    # "i":I
    :cond_0
    if-eqz v0, :cond_1

    .line 704
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 705
    .local v2, "builder":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;->getTransId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v4}, Lcom/mediatek/ims/internal/DataDispatcher;->access$2800(Lcom/mediatek/ims/internal/DataDispatcher;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v4}, Lcom/mediatek/ims/internal/DataDispatcher;->access$1100(Lcom/mediatek/ims/internal/DataDispatcher;)Ljava/util/HashMap;

    move-result-object v4

    const-string v5, "UNKNOWN"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mInterface:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 709
    iget-object v3, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    iget-object v4, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v4}, Lcom/mediatek/ims/internal/DataDispatcher;->access$2900(Lcom/mediatek/ims/internal/DataDispatcher;)Lcom/mediatek/ims/internal/DataDispatcherUtil;

    move-result-object v4

    const v5, 0xdbbac

    .line 710
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 709
    invoke-virtual {v4, v5, v6}, Lcom/mediatek/ims/internal/DataDispatcherUtil;->enCodeEvent(ILjava/lang/String;)Lcom/mediatek/ims/ImsAdapter$VaEvent;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/ims/internal/DataDispatcher;->sendVaEvent(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V

    .line 711
    iget-object v3, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;->getRequestID()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 713
    .end local v2    # "builder":Ljava/lang/StringBuilder;
    :cond_1
    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->clearNwInfo(Z)V

    .line 714
    return-void
.end method

.method private onReleaseNetworkCompleted()V
    .locals 7

    .line 678
    const-string v0, "onReleaseNetworkCompleted"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->logd(Ljava/lang/String;)V

    .line 679
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    const v1, 0xdbbab

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;

    .line 681
    .local v0, "n":Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 682
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "found Req: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->logd(Ljava/lang/String;)V

    .line 681
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 684
    .end local v2    # "i":I
    :cond_0
    if-eqz v0, :cond_1

    .line 685
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 686
    .local v2, "builder":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;->getTransId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v4}, Lcom/mediatek/ims/internal/DataDispatcher;->access$2800(Lcom/mediatek/ims/internal/DataDispatcher;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v4}, Lcom/mediatek/ims/internal/DataDispatcher;->access$1100(Lcom/mediatek/ims/internal/DataDispatcher;)Ljava/util/HashMap;

    move-result-object v4

    const-string v5, "UNKNOWN"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mInterface:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    iget-object v3, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    iget-object v4, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v4}, Lcom/mediatek/ims/internal/DataDispatcher;->access$2900(Lcom/mediatek/ims/internal/DataDispatcher;)Lcom/mediatek/ims/internal/DataDispatcherUtil;

    move-result-object v4

    const v5, 0xdbbac

    .line 691
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 690
    invoke-virtual {v4, v5, v6}, Lcom/mediatek/ims/internal/DataDispatcherUtil;->enCodeEvent(ILjava/lang/String;)Lcom/mediatek/ims/ImsAdapter$VaEvent;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/ims/internal/DataDispatcher;->sendVaEvent(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V

    .line 692
    iget-object v3, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;->getRequestID()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 694
    .end local v2    # "builder":Ljava/lang/StringBuilder;
    :cond_1
    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->clearNwInfo(Z)V

    .line 695
    return-void
.end method

.method private onRequestNetworkCompleted()V
    .locals 6

    .line 614
    const-string v0, "onRequestNetworkComplete"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->logd(Ljava/lang/String;)V

    .line 615
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    const v1, 0xdbba8

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;

    .line 617
    .local v0, "n":Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 618
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "found Req: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->logd(Ljava/lang/String;)V

    .line 617
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 620
    .end local v1    # "i":I
    :cond_0
    if-eqz v0, :cond_1

    .line 622
    invoke-direct {p0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->notifyNetworkHandle()V

    .line 624
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 625
    .local v1, "builder":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;->getTransId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v3}, Lcom/mediatek/ims/internal/DataDispatcher;->access$2800(Lcom/mediatek/ims/internal/DataDispatcher;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mNetworkId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mInterface:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "netId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mNetworkId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " IfaceName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mInterface:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->logd(Ljava/lang/String;)V

    .line 631
    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    iget-object v3, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v3}, Lcom/mediatek/ims/internal/DataDispatcher;->access$2900(Lcom/mediatek/ims/internal/DataDispatcher;)Lcom/mediatek/ims/internal/DataDispatcherUtil;

    move-result-object v3

    const v4, 0xdbba9

    .line 632
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 631
    invoke-virtual {v3, v4, v5}, Lcom/mediatek/ims/internal/DataDispatcherUtil;->enCodeEvent(ILjava/lang/String;)Lcom/mediatek/ims/ImsAdapter$VaEvent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/ims/internal/DataDispatcher;->sendVaEvent(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V

    .line 633
    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;->getRequestID()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 635
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    :cond_1
    return-void
.end method

.method private refreshNwLostCallBack(Landroid/net/NetworkRequest;)V
    .locals 2
    .param p1, "nwRequest"    # Landroid/net/NetworkRequest;

    .line 767
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refreshNwLostCallBack nwRequest: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->logd(Ljava/lang/String;)V

    .line 770
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mNwLostCallback:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$NwLostCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 773
    goto :goto_0

    .line 771
    :catch_0
    move-exception v0

    .line 772
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const-string v1, "cb already has been released!!"

    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->loge(Ljava/lang/String;)V

    .line 774
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :goto_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mNwLostCallback:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$NwLostCallback;

    invoke-virtual {v0, p1, v1}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 775
    return-void
.end method

.method private rejectNetworkReleased(I)V
    .locals 6
    .param p1, "cause"    # I

    .line 660
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rejectNetworkReleased cause: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->logd(Ljava/lang/String;)V

    .line 661
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    const v1, 0xdbbab

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;

    .line 663
    .local v0, "n":Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 664
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "found Req: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->logd(Ljava/lang/String;)V

    .line 663
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 666
    .end local v1    # "i":I
    :cond_0
    if-eqz v0, :cond_1

    .line 667
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 668
    .local v1, "builder":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;->getTransId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 669
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v3}, Lcom/mediatek/ims/internal/DataDispatcher;->access$2800(Lcom/mediatek/ims/internal/DataDispatcher;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    iget-object v3, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v3}, Lcom/mediatek/ims/internal/DataDispatcher;->access$2900(Lcom/mediatek/ims/internal/DataDispatcher;)Lcom/mediatek/ims/internal/DataDispatcherUtil;

    move-result-object v3

    const v4, 0xdbbad

    .line 672
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 671
    invoke-virtual {v3, v4, v5}, Lcom/mediatek/ims/internal/DataDispatcherUtil;->enCodeEvent(ILjava/lang/String;)Lcom/mediatek/ims/ImsAdapter$VaEvent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/ims/internal/DataDispatcher;->sendVaEvent(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V

    .line 673
    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;->getRequestID()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 675
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    :cond_1
    return-void
.end method

.method private rejectNetworkRequest(I)V
    .locals 7
    .param p1, "cause"    # I

    .line 595
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rejectNetworkRequest cause: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->logd(Ljava/lang/String;)V

    .line 596
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    const v1, 0xdbba8

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;

    .line 598
    .local v0, "n":Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 599
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "found Req: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->logd(Ljava/lang/String;)V

    .line 598
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 601
    .end local v2    # "i":I
    :cond_0
    if-eqz v0, :cond_1

    .line 602
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 603
    .local v2, "builder":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;->getTransId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v4}, Lcom/mediatek/ims/internal/DataDispatcher;->access$2800(Lcom/mediatek/ims/internal/DataDispatcher;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    iget-object v3, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    iget-object v4, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v4}, Lcom/mediatek/ims/internal/DataDispatcher;->access$2900(Lcom/mediatek/ims/internal/DataDispatcher;)Lcom/mediatek/ims/internal/DataDispatcherUtil;

    move-result-object v4

    const v5, 0xdbbaa

    .line 607
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 606
    invoke-virtual {v4, v5, v6}, Lcom/mediatek/ims/internal/DataDispatcherUtil;->enCodeEvent(ILjava/lang/String;)Lcom/mediatek/ims/ImsAdapter$VaEvent;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/ims/internal/DataDispatcher;->sendVaEvent(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V

    .line 608
    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->clearNwInfo(Z)V

    .line 609
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;->getRequestID()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 611
    .end local v2    # "builder":Ljava/lang/StringBuilder;
    :cond_1
    return-void
.end method

.method private releaseNetwork()V
    .locals 3

    .line 648
    const-string v0, "releaseNetwork"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->logd(Ljava/lang/String;)V

    .line 649
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    const v1, 0xdbbab

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;

    .line 653
    .local v0, "n":Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mNwAvailableCallback:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$NwAvailableCallback;

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 656
    goto :goto_0

    .line 654
    :catch_0
    move-exception v1

    .line 655
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    const-string v2, "cb already has been released!!"

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->loge(Ljava/lang/String;)V

    .line 657
    .end local v1    # "ex":Ljava/lang/IllegalArgumentException;
    :goto_0
    return-void
.end method

.method private requestNetwork()Z
    .locals 5

    .line 565
    const-string v0, "requestNetwork"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->logd(Ljava/lang/String;)V

    .line 566
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v0}, Lcom/mediatek/ims/internal/DataDispatcher;->access$000(Lcom/mediatek/ims/internal/DataDispatcher;)I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 567
    iget v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mCapabiliy:I

    const/16 v2, 0xa

    if-eq v0, v2, :cond_0

    .line 568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inValid subId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v2}, Lcom/mediatek/ims/internal/DataDispatcher;->access$000(Lcom/mediatek/ims/internal/DataDispatcher;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->loge(Ljava/lang/String;)V

    .line 569
    return v1

    .line 573
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    const v2, 0xdbba8

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;

    .line 576
    .local v0, "n":Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;
    if-nez v0, :cond_1

    .line 577
    const-string v2, "ImsBearerRequest is NULL"

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->loge(Ljava/lang/String;)V

    .line 578
    return v1

    .line 581
    :cond_1
    new-instance v2, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v2}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 582
    .local v2, "builder":Landroid/net/NetworkRequest$Builder;
    iget v3, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mCapabiliy:I

    invoke-virtual {v2, v3}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 583
    invoke-virtual {v2, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 584
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->access$000(Lcom/mediatek/ims/internal/DataDispatcher;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Ljava/lang/String;)Landroid/net/NetworkRequest$Builder;

    .line 585
    invoke-virtual {v2}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    .line 587
    .local v1, "nwRequest":Landroid/net/NetworkRequest;
    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->refreshNwLostCallBack(Landroid/net/NetworkRequest;)V

    .line 589
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start requestNetwork for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->logd(Ljava/lang/String;)V

    .line 590
    iget-object v3, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v4, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mNwAvailableCallback:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$NwAvailableCallback;

    invoke-virtual {v3, v1, v4}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 591
    const/4 v3, 0x1

    return v3
.end method

.method private setFirewallInterfaceChain(Z)V
    .locals 2
    .param p1, "isAdded"    # Z

    .line 861
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFirewallInterfaceChain:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->logd(Ljava/lang/String;)V

    .line 862
    new-instance v0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$1;

    const-string v1, "setFirewallInterfaceChain"

    invoke-direct {v0, p0, v1, p1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$1;-><init>(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;Ljava/lang/String;Z)V

    .line 881
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 882
    return-void
.end method


# virtual methods
.method public logd(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 849
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v2}, Lcom/mediatek/ims/internal/DataDispatcher;->access$2800(Lcom/mediatek/ims/internal/DataDispatcher;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    return-void
.end method

.method public loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 857
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v2}, Lcom/mediatek/ims/internal/DataDispatcher;->access$2800(Lcom/mediatek/ims/internal/DataDispatcher;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    return-void
.end method

.method public logi(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 853
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v2}, Lcom/mediatek/ims/internal/DataDispatcher;->access$2800(Lcom/mediatek/ims/internal/DataDispatcher;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    return-void
.end method

.method public onSubscriptionsChanged()V
    .locals 2

    .line 758
    const-string v0, "onSubscriptionsChanged"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->logd(Ljava/lang/String;)V

    .line 759
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    const v1, 0xdbba8

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;

    .line 761
    .local v0, "n":Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;
    if-eqz v0, :cond_0

    .line 762
    const v1, 0x927c1

    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->sendMessage(Landroid/os/Message;)V

    .line 764
    :cond_0
    return-void
.end method

.method public putRequest(Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;)V
    .locals 3
    .param p1, "request"    # Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;

    .line 749
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;->getRequestID()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;

    .line 750
    .local v0, "n":Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;
    if-nez v0, :cond_0

    .line 751
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->mImsNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/mediatek/ims/internal/DataDispatcherUtil$ImsBearerRequest;->getRequestID()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 753
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request already exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->loge(Ljava/lang/String;)V

    .line 755
    :goto_0
    return-void
.end method
