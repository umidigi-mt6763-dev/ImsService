.class Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$NwAvailableCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "DataDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NwAvailableCallback"
.end annotation


# instance fields
.field private mConn:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

.field final synthetic this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;)V
    .locals 0
    .param p2, "conn"    # Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    .line 781
    iput-object p1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$NwAvailableCallback;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 782
    iput-object p2, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$NwAvailableCallback;->mConn:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    .line 783
    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 5
    .param p1, "network"    # Landroid/net/Network;

    .line 787
    if-nez p1, :cond_0

    .line 788
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$NwAvailableCallback;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    const-string v1, "onAvailable: network is null"

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->loge(Ljava/lang/String;)V

    .line 789
    return-void

    .line 792
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$NwAvailableCallback;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    invoke-static {v0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->access$3000(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v0

    .line 793
    .local v0, "mLink":Landroid/net/LinkProperties;
    if-nez v0, :cond_1

    .line 794
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$NwAvailableCallback;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    const-string v2, "LinkProperties is null"

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->loge(Ljava/lang/String;)V

    .line 795
    return-void

    .line 798
    :cond_1
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$NwAvailableCallback;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->access$3000(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;)Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 799
    .local v1, "netInfo":Landroid/net/NetworkInfo;
    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$NwAvailableCallback;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAvailable: networInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->logd(Ljava/lang/String;)V

    .line 801
    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$NwAvailableCallback;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    iget v3, p1, Landroid/net/Network;->netId:I

    invoke-static {v2, v3}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->access$3102(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;I)I

    .line 802
    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$NwAvailableCallback;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    invoke-virtual {p1}, Landroid/net/Network;->getNetworkHandle()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->access$3202(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;J)J

    .line 803
    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$NwAvailableCallback;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->access$2402(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;Ljava/lang/String;)Ljava/lang/String;

    .line 804
    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$NwAvailableCallback;->mConn:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    iget-object v3, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$NwAvailableCallback;->mConn:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    const v4, 0xc3501

    invoke-virtual {v3, v4}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->sendMessage(Landroid/os/Message;)V

    .line 806
    return-void
.end method
