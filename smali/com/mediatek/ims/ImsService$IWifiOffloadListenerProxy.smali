.class Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;
.super Lcom/mediatek/wfo/WifiOffloadManager$Listener;
.source "ImsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/ImsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IWifiOffloadListenerProxy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/ImsService;


# direct methods
.method private constructor <init>(Lcom/mediatek/ims/ImsService;)V
    .locals 0

    .line 1258
    iput-object p1, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-direct {p0}, Lcom/mediatek/wfo/WifiOffloadManager$Listener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/ims/ImsService;Lcom/mediatek/ims/ImsService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/ims/ImsService;
    .param p2, "x1"    # Lcom/mediatek/ims/ImsService$1;

    .line 1258
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;-><init>(Lcom/mediatek/ims/ImsService;)V

    return-void
.end method


# virtual methods
.method public onHandover(III)V
    .locals 3
    .param p1, "simIdx"    # I
    .param p2, "stage"    # I
    .param p3, "ratType"    # I

    .line 1262
    iget-object v0, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHandover simIdx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", stage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", ratType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 1264
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    .line 1265
    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->access$1300(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v0

    aget v0, v0, p1

    if-nez v0, :cond_0

    .line 1267
    iget-object v0, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->access$1400(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v0

    aput p3, v0, p1

    .line 1268
    iget-object v0, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    iget-object v1, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v1}, Lcom/mediatek/ims/ImsService;->access$1300(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v1

    aget v1, v1, p1

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcom/mediatek/ims/ImsService;->access$1500(Lcom/mediatek/ims/ImsService;IIZ)V

    .line 1269
    iget-object v0, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    iget-object v1, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v1}, Lcom/mediatek/ims/ImsService;->access$1600(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v1

    aget v1, v1, p1

    invoke-static {v0, p1, v1, v2}, Lcom/mediatek/ims/ImsService;->access$1700(Lcom/mediatek/ims/ImsService;IIZ)V

    .line 1271
    :cond_0
    return-void
.end method

.method public onRequestImsSwitch(IZ)V
    .locals 5
    .param p1, "simIdx"    # I
    .param p2, "isImsOn"    # Z

    .line 1275
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMdAutoSetupIms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1276
    return-void

    .line 1278
    :cond_0
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->getMainCapabilityPhoneId()I

    move-result v0

    .line 1279
    .local v0, "mainCapabilityPhoneId":I
    iget-object v1, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRequestImsSwitch simIdx="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " isImsOn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mainCapabilityPhoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 1282
    iget-object v1, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v1}, Lcom/mediatek/ims/ImsService;->access$600(Lcom/mediatek/ims/ImsService;)I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 1283
    iget-object v1, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    const-string v2, "onRequestImsSwitch can\'t enable/disable ims due to wrong sim id"

    invoke-static {v1, v2}, Lcom/mediatek/ims/ImsService;->access$1800(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 1286
    :cond_1
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMims()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1287
    if-eq p1, v0, :cond_2

    .line 1288
    iget-object v1, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    const-string v2, "onRequestImsSwitch, ignore not MainCapabilityPhoneId request"

    invoke-static {v1, v2}, Lcom/mediatek/ims/ImsService;->access$300(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 1289
    return-void

    .line 1293
    :cond_2
    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eqz p2, :cond_5

    .line 1294
    iget-object v3, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v3}, Lcom/mediatek/ims/ImsService;->access$700(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v3

    aget v3, v3, p1

    if-ne v3, v2, :cond_4

    iget-object v3, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    .line 1295
    invoke-static {v3}, Lcom/mediatek/ims/ImsService;->access$1900(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v3

    aget v3, v3, p1

    if-nez v3, :cond_3

    goto :goto_0

    .line 1301
    :cond_3
    iget-object v1, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    const-string v2, "Ims already enable and ignore to send AT command."

    invoke-static {v1, v2}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    goto :goto_2

    .line 1296
    :cond_4
    :goto_0
    iget-object v3, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v3}, Lcom/mediatek/ims/ImsService;->access$2000(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v3

    aget-object v3, v3, p1

    iget-object v4, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    .line 1297
    invoke-static {v4}, Lcom/mediatek/ims/ImsService;->access$400(Lcom/mediatek/ims/ImsService;)[Landroid/os/Handler;

    move-result-object v4

    aget-object v4, v4, p1

    invoke-virtual {v4, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1296
    invoke-interface {v3, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->turnOnIms(Landroid/os/Message;)V

    .line 1298
    iget-object v1, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v1}, Lcom/mediatek/ims/ImsService;->access$1900(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v1

    aput v2, v1, p1

    .line 1299
    iget-object v1, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v1}, Lcom/mediatek/ims/ImsService;->access$700(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v1

    const/4 v2, 0x2

    aput v2, v1, p1

    goto :goto_2

    .line 1304
    :cond_5
    iget-object v3, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v3}, Lcom/mediatek/ims/ImsService;->access$700(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v3

    aget v3, v3, p1

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    .line 1305
    invoke-static {v3}, Lcom/mediatek/ims/ImsService;->access$1900(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v3

    aget v3, v3, p1

    if-ne v3, v2, :cond_6

    goto :goto_1

    .line 1311
    :cond_6
    iget-object v1, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    const-string v2, "Ims already disabled and ignore to send AT command."

    invoke-static {v1, v2}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    goto :goto_2

    .line 1306
    :cond_7
    :goto_1
    iget-object v2, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v2}, Lcom/mediatek/ims/ImsService;->access$2000(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v2

    aget-object v2, v2, p1

    iget-object v3, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    .line 1307
    invoke-static {v3}, Lcom/mediatek/ims/ImsService;->access$400(Lcom/mediatek/ims/ImsService;)[Landroid/os/Handler;

    move-result-object v3

    aget-object v3, v3, p1

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 1306
    invoke-interface {v2, v3}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->turnOffIms(Landroid/os/Message;)V

    .line 1308
    iget-object v2, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v2}, Lcom/mediatek/ims/ImsService;->access$1900(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v2

    const/4 v3, 0x0

    aput v3, v2, p1

    .line 1309
    iget-object v2, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v2}, Lcom/mediatek/ims/ImsService;->access$700(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v2

    aput v1, v2, p1

    .line 1314
    :goto_2
    return-void
.end method

.method public onWifiPdnOOSStateChanged(II)V
    .locals 3
    .param p1, "simId"    # I
    .param p2, "oosState"    # I

    .line 1318
    iget-object v0, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWifiPdnOOSStateChanged simIdx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", oosState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 1319
    iget-object v0, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v0, p1, p2}, Lcom/mediatek/ims/ImsService;->access$2100(Lcom/mediatek/ims/ImsService;II)V

    .line 1320
    return-void
.end method
