.class public Lcom/mediatek/ims/ImsAdapter;
.super Landroid/os/Handler;
.source "ImsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/ImsAdapter$Util;,
        Lcom/mediatek/ims/ImsAdapter$VaSocketIO;,
        Lcom/mediatek/ims/ImsAdapter$ImsaIndication;,
        Lcom/mediatek/ims/ImsAdapter$ImsaProxyDeathRecipient;,
        Lcom/mediatek/ims/ImsAdapter$VaEvent;
    }
.end annotation


# static fields
.field protected static final IIMSA_GET_SERVICE_DELAY_MILLIS:I = 0x3e8

.field private static final IMSA_RETRY_SOCKET_TIME:I = 0x1f4

.field private static final MSG_IMSA_EVENT_PROXY_DEAD:I = 0x3

.field private static final MSG_IMSA_RETRY_CONNECT_SOCKET:I = 0x1

.field private static final MSG_IMSA_RETRY_IMS_ENABLE:I = 0x2

.field private static final MULTI_IMS_SUPPORT:Ljava/lang/String; = "persist.vendor.mims_support"

.field private static final SOCKET_NAME1:Ljava/lang/String; = "volte_imsm"

.field private static final TAG:Ljava/lang/String; = "[ImsAdapter]"

.field private static mImsEventDispatcher:Lcom/mediatek/ims/ImsEventDispatcher;

.field private static mImsServiceUp:Z

.field private static mInitialDisable:[Z

.field private static mInstance:Lcom/mediatek/ims/ImsAdapter;

.field private static mNumOfPhones:I

.field private static misImsAdapterEnabled:[Z


# instance fields
.field private IS_ENG_BUILD:Z

.field private IS_USERDEBUG_BUILD:Z

.field private IS_USER_BUILD:Z

.field private ImsEnabledThreadLock:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mIO:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

.field private mImsaIndication:Lcom/mediatek/ims/ImsAdapter$ImsaIndication;

.field private volatile mImsaProxy:Lvendor/mediatek/hardware/imsa/V1_0/IImsa;

.field private final mImsaProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

.field private final mImsaProxyDeathRecipient:Lcom/mediatek/ims/ImsAdapter$ImsaProxyDeathRecipient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 488
    const/4 v0, 0x0

    sput v0, Lcom/mediatek/ims/ImsAdapter;->mNumOfPhones:I

    .line 491
    sput-boolean v0, Lcom/mediatek/ims/ImsAdapter;->mImsServiceUp:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 499
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 482
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/ImsAdapter;->mImsaProxy:Lvendor/mediatek/hardware/imsa/V1_0/IImsa;

    .line 483
    new-instance v0, Lcom/mediatek/ims/ImsAdapter$ImsaProxyDeathRecipient;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/ImsAdapter$ImsaProxyDeathRecipient;-><init>(Lcom/mediatek/ims/ImsAdapter;)V

    iput-object v0, p0, Lcom/mediatek/ims/ImsAdapter;->mImsaProxyDeathRecipient:Lcom/mediatek/ims/ImsAdapter$ImsaProxyDeathRecipient;

    .line 484
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/mediatek/ims/ImsAdapter;->mImsaProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 485
    new-instance v0, Lcom/mediatek/ims/ImsAdapter$ImsaIndication;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/ImsAdapter$ImsaIndication;-><init>(Lcom/mediatek/ims/ImsAdapter;)V

    iput-object v0, p0, Lcom/mediatek/ims/ImsAdapter;->mImsaIndication:Lcom/mediatek/ims/ImsAdapter$ImsaIndication;

    .line 493
    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/ims/ImsAdapter;->IS_USER_BUILD:Z

    .line 494
    const-string v0, "userdebug"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/ims/ImsAdapter;->IS_USERDEBUG_BUILD:Z

    .line 495
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/ims/ImsAdapter;->IS_ENG_BUILD:Z

    .line 497
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ImsAdapter;->ImsEnabledThreadLock:Ljava/lang/Object;

    .line 501
    iput-object p1, p0, Lcom/mediatek/ims/ImsAdapter;->mContext:Landroid/content/Context;

    .line 503
    sget-object v0, Lcom/mediatek/ims/ImsAdapter;->mInstance:Lcom/mediatek/ims/ImsAdapter;

    if-nez v0, :cond_0

    .line 504
    sput-object p0, Lcom/mediatek/ims/ImsAdapter;->mInstance:Lcom/mediatek/ims/ImsAdapter;

    .line 507
    :cond_0
    const-string v0, "@M_[ImsAdapter]"

    const-string v1, "ImsAdapter(): ImsAdapter Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    new-instance v0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    invoke-virtual {p0}, Lcom/mediatek/ims/ImsAdapter;->getImsaProxy()Lvendor/mediatek/hardware/imsa/V1_0/IImsa;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;-><init>(Lcom/mediatek/ims/ImsAdapter;Lvendor/mediatek/hardware/imsa/V1_0/IImsa;)V

    iput-object v0, p0, Lcom/mediatek/ims/ImsAdapter;->mIO:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    .line 510
    new-instance v0, Lcom/mediatek/ims/ImsEventDispatcher;

    iget-object v1, p0, Lcom/mediatek/ims/ImsAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/ims/ImsAdapter;->mIO:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    invoke-direct {v0, v1, v2}, Lcom/mediatek/ims/ImsEventDispatcher;-><init>(Landroid/content/Context;Lcom/mediatek/ims/ImsAdapter$VaSocketIO;)V

    sput-object v0, Lcom/mediatek/ims/ImsAdapter;->mImsEventDispatcher:Lcom/mediatek/ims/ImsEventDispatcher;

    .line 512
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/mediatek/ims/ImsAdapter;->mNumOfPhones:I

    .line 514
    sget v0, Lcom/mediatek/ims/ImsAdapter;->mNumOfPhones:I

    new-array v0, v0, [Z

    sput-object v0, Lcom/mediatek/ims/ImsAdapter;->misImsAdapterEnabled:[Z

    .line 515
    sget v0, Lcom/mediatek/ims/ImsAdapter;->mNumOfPhones:I

    new-array v0, v0, [Z

    sput-object v0, Lcom/mediatek/ims/ImsAdapter;->mInitialDisable:[Z

    .line 517
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    sget v2, Lcom/mediatek/ims/ImsAdapter;->mNumOfPhones:I

    if-ge v1, v2, :cond_1

    .line 518
    sget-object v2, Lcom/mediatek/ims/ImsAdapter;->misImsAdapterEnabled:[Z

    aput-boolean v0, v2, v1

    .line 519
    sget-object v2, Lcom/mediatek/ims/ImsAdapter;->mInitialDisable:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, v1

    .line 517
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 522
    .end local v1    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ImsAdapter;->mIO:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->start()V

    .line 523
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/ims/ImsAdapter;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsAdapter;

    .line 73
    iget-object v0, p0, Lcom/mediatek/ims/ImsAdapter;->mImsaProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static synthetic access$100()Lcom/mediatek/ims/ImsAdapter;
    .locals 1

    .line 73
    sget-object v0, Lcom/mediatek/ims/ImsAdapter;->mInstance:Lcom/mediatek/ims/ImsAdapter;

    return-object v0
.end method

.method static synthetic access$200()Lcom/mediatek/ims/ImsEventDispatcher;
    .locals 1

    .line 73
    sget-object v0, Lcom/mediatek/ims/ImsAdapter;->mImsEventDispatcher:Lcom/mediatek/ims/ImsEventDispatcher;

    return-object v0
.end method

.method private disableImsStack(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 723
    new-instance v0, Lcom/mediatek/ims/ImsAdapter$VaEvent;

    const v1, 0xdbba4

    invoke-direct {v0, p1, v1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;-><init>(II)V

    .line 724
    .local v0, "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    iget-object v1, p0, Lcom/mediatek/ims/ImsAdapter;->mIO:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    invoke-virtual {v1, v0}, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->writeEvent(Lcom/mediatek/ims/ImsAdapter$VaEvent;)I

    .line 726
    return-void
.end method

.method private enableImsStack(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 714
    new-instance v0, Lcom/mediatek/ims/ImsAdapter$VaEvent;

    const v1, 0xdbba3

    invoke-direct {v0, p1, v1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;-><init>(II)V

    .line 715
    .local v0, "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    iget-object v1, p0, Lcom/mediatek/ims/ImsAdapter;->mIO:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    invoke-virtual {v1, v0}, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->writeEvent(Lcom/mediatek/ims/ImsAdapter$VaEvent;)I

    .line 717
    return-void
.end method

.method public static getInstance()Lcom/mediatek/ims/ImsAdapter;
    .locals 1

    .line 566
    sget-object v0, Lcom/mediatek/ims/ImsAdapter;->mInstance:Lcom/mediatek/ims/ImsAdapter;

    return-object v0
.end method

.method public static requestIdToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "requestId"    # I

    .line 730
    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    .line 763
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 760
    :pswitch_0
    const-string v0, "MSG_ID_REJECT_PCSCF_DISCOVERY"

    return-object v0

    .line 759
    :pswitch_1
    const-string v0, "MSG_ID_RESPONSE_PCSCF_DISCOVERY"

    return-object v0

    .line 758
    :pswitch_2
    const-string v0, "MSG_ID_REQUEST_PCSCF_DISCOVERY"

    return-object v0

    .line 757
    :pswitch_3
    const-string v0, "MSG_ID_NOTIFY_SS_PROGRESS_INDICATION"

    return-object v0

    .line 755
    :pswitch_4
    const-string v0, "MSG_ID_NOTIFY_XUI_IND"

    return-object v0

    .line 752
    :pswitch_5
    const-string v0, "MSG_ID_WRAP_IMSPA_IMSM_PDN_DEACT_IND"

    return-object v0

    .line 750
    :pswitch_6
    const-string v0, "MSG_ID_WRAP_IMSPA_IMSM_PDN_DEACT_REJ_RESP"

    return-object v0

    .line 748
    :pswitch_7
    const-string v0, "MSG_ID_WRAP_IMSPA_IMSM_PDN_DEACT_ACK_RESP"

    return-object v0

    .line 746
    :pswitch_8
    const-string v0, "MSG_ID_WRAP_IMSM_IMSPA_PDN_DEACT_REQ"

    return-object v0

    .line 744
    :pswitch_9
    const-string v0, "MSG_ID_WRAP_IMSPA_IMSM_PDN_ACT_REJ_RESP"

    return-object v0

    .line 742
    :pswitch_a
    const-string v0, "MSG_ID_WRAP_IMSPA_IMSM_PDN_ACT_ACK_RESP"

    return-object v0

    .line 740
    :pswitch_b
    const-string v0, "MSG_ID_WRAP_IMSM_IMSPA_PDN_ACT_REQ"

    return-object v0

    .line 736
    :pswitch_c
    const-string v0, "MSG_ID_IMS_DISABLE_IND"

    return-object v0

    .line 735
    :pswitch_d
    const-string v0, "MSG_ID_IMS_ENABLE_IND"

    return-object v0

    .line 734
    :pswitch_e
    const-string v0, "MSG_ID_WRAP_IMSM_IMSPA_INFORMATION_REQ"

    return-object v0

    .line 732
    :pswitch_f
    const-string v0, "MSG_ID_WRAP_IMSPA_IMSM_INFORMATION_IND"

    return-object v0

    :pswitch_data_0
    .packed-switch 0xdbba1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xdbba8
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xdbd31
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private resetProxyAndRequestList()V
    .locals 1

    .line 555
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/ImsAdapter;->mImsaProxy:Lvendor/mediatek/hardware/imsa/V1_0/IImsa;

    .line 556
    iget-object v0, p0, Lcom/mediatek/ims/ImsAdapter;->mIO:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->clearImsaProxy()V

    .line 558
    iget-object v0, p0, Lcom/mediatek/ims/ImsAdapter;->mImsaProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 563
    return-void
.end method


# virtual methods
.method public ImsServiceUp()V
    .locals 2

    .line 682
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mediatek/ims/ImsAdapter;->mImsServiceUp:Z

    .line 683
    const-string v0, "@M_[ImsAdapter]"

    const-string v1, "ImsServiceUp, start to ACTION_IMS_SERVICE_UP intent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    return-void
.end method

.method public disableImsAdapter(IZ)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "isNormalDisable"    # Z

    .line 610
    const-string v0, "@M_[ImsAdapter]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableImsAdapter(): misImsAdapterEnabled[phoneId]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/mediatek/ims/ImsAdapter;->misImsAdapterEnabled:[Z

    aget-boolean v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isNormalDisable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", initial disable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/mediatek/ims/ImsAdapter;->mInitialDisable:[Z

    aget-boolean v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    iget-object v0, p0, Lcom/mediatek/ims/ImsAdapter;->ImsEnabledThreadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 618
    :try_start_0
    sget-object v1, Lcom/mediatek/ims/ImsAdapter;->misImsAdapterEnabled:[Z

    aget-boolean v1, v1, p1

    if-nez v1, :cond_0

    sget-object v1, Lcom/mediatek/ims/ImsAdapter;->mInitialDisable:[Z

    aget-boolean v1, v1, p1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    .line 619
    :cond_0
    sget-object v1, Lcom/mediatek/ims/ImsAdapter;->misImsAdapterEnabled:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, p1

    .line 620
    sget-object v1, Lcom/mediatek/ims/ImsAdapter;->mInitialDisable:[Z

    aput-boolean v2, v1, p1

    .line 622
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsAdapter;->disableImsStack(I)V

    .line 624
    new-instance v1, Lcom/mediatek/ims/ImsAdapter$VaEvent;

    const v2, 0xdbba4

    invoke-direct {v1, p1, v2}, Lcom/mediatek/ims/ImsAdapter$VaEvent;-><init>(II)V

    .line 626
    .local v1, "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 627
    .local v2, "msg":Landroid/os/Message;
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 628
    sget-object v3, Lcom/mediatek/ims/ImsAdapter;->mImsEventDispatcher:Lcom/mediatek/ims/ImsEventDispatcher;

    invoke-virtual {v3, v2}, Lcom/mediatek/ims/ImsEventDispatcher;->sendMessage(Landroid/os/Message;)Z

    .line 630
    .end local v1    # "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    .end local v2    # "msg":Landroid/os/Message;
    :cond_1
    monitor-exit v0

    .line 631
    return-void

    .line 630
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public disableImsAdapterForAllPhone(Z)V
    .locals 2
    .param p1, "isNormalDisable"    # Z

    .line 635
    const-string v0, "persist.vendor.mims_support"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 636
    invoke-static {}, Lcom/mediatek/ims/ImsAdapter$Util;->getDefaultVoltePhoneId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ImsAdapter;->disableImsAdapter(IZ)V

    goto :goto_1

    .line 638
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/mediatek/ims/ImsAdapter;->mNumOfPhones:I

    if-ge v0, v1, :cond_1

    .line 639
    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/ImsAdapter;->disableImsAdapter(IZ)V

    .line 638
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 642
    .end local v0    # "i":I
    :cond_1
    :goto_1
    return-void
.end method

.method public enableImsAdapter(I)V
    .locals 5
    .param p1, "phoneId"    # I

    .line 570
    const-string v0, "@M_[ImsAdapter]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableImsAdapter: misImsAdapterEnabled[phoneId]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/mediatek/ims/ImsAdapter;->misImsAdapterEnabled:[Z

    aget-boolean v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    iget-object v0, p0, Lcom/mediatek/ims/ImsAdapter;->ImsEnabledThreadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 575
    :try_start_0
    sget-object v1, Lcom/mediatek/ims/ImsAdapter;->misImsAdapterEnabled:[Z

    aget-boolean v1, v1, p1

    if-nez v1, :cond_1

    .line 576
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsAdapter;->getImsaProxy()Lvendor/mediatek/hardware/imsa/V1_0/IImsa;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 577
    const-string v1, "@M_[ImsAdapter]"

    const-string v2, "enalbeImsAdapter(): mImsaProxy success"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    new-instance v1, Lcom/mediatek/ims/ImsAdapter$VaEvent;

    const v2, 0xdbba3

    invoke-direct {v1, p1, v2}, Lcom/mediatek/ims/ImsAdapter$VaEvent;-><init>(II)V

    .line 582
    .local v1, "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 583
    .local v2, "msg":Landroid/os/Message;
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 584
    sget-object v3, Lcom/mediatek/ims/ImsAdapter;->mImsEventDispatcher:Lcom/mediatek/ims/ImsEventDispatcher;

    invoke-virtual {v3, v2}, Lcom/mediatek/ims/ImsEventDispatcher;->sendMessage(Landroid/os/Message;)Z

    .line 586
    sget-object v3, Lcom/mediatek/ims/ImsAdapter;->misImsAdapterEnabled:[Z

    const/4 v4, 0x1

    aput-boolean v4, v3, p1

    .line 587
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsAdapter;->enableImsStack(I)V

    .line 588
    .end local v1    # "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    .end local v2    # "msg":Landroid/os/Message;
    goto :goto_0

    .line 589
    :cond_0
    const-string v1, "@M_[ImsAdapter]"

    const-string v2, "enableImsAdapter(): mImsaProxy create fail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    :cond_1
    :goto_0
    monitor-exit v0

    .line 593
    return-void

    .line 592
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getImsAdapterEnable()Z
    .locals 4

    .line 596
    const/4 v0, 0x0

    .line 598
    .local v0, "isEnabled":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/mediatek/ims/ImsAdapter;->misImsAdapterEnabled:[Z

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 599
    sget-object v2, Lcom/mediatek/ims/ImsAdapter;->misImsAdapterEnabled:[Z

    aget-boolean v2, v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 600
    const/4 v0, 0x1

    .line 601
    goto :goto_1

    .line 598
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 605
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return v0
.end method

.method public getImsServiceUp()Z
    .locals 1

    .line 687
    sget-boolean v0, Lcom/mediatek/ims/ImsAdapter;->mImsServiceUp:Z

    return v0
.end method

.method public getImsaProxy()Lvendor/mediatek/hardware/imsa/V1_0/IImsa;
    .locals 4

    .line 526
    iget-object v0, p0, Lcom/mediatek/ims/ImsAdapter;->mImsaProxy:Lvendor/mediatek/hardware/imsa/V1_0/IImsa;

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/mediatek/ims/ImsAdapter;->mImsaProxy:Lvendor/mediatek/hardware/imsa/V1_0/IImsa;

    return-object v0

    .line 530
    :cond_0
    :try_start_0
    const-string v0, "imsa"

    invoke-static {v0}, Lvendor/mediatek/hardware/imsa/V1_0/IImsa;->getService(Ljava/lang/String;)Lvendor/mediatek/hardware/imsa/V1_0/IImsa;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/ImsAdapter;->mImsaProxy:Lvendor/mediatek/hardware/imsa/V1_0/IImsa;

    .line 531
    const-string v0, "@M_[ImsAdapter]"

    const-string v1, "IImsa.getService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    iget-object v0, p0, Lcom/mediatek/ims/ImsAdapter;->mImsaProxy:Lvendor/mediatek/hardware/imsa/V1_0/IImsa;

    if-eqz v0, :cond_1

    .line 533
    iget-object v0, p0, Lcom/mediatek/ims/ImsAdapter;->mImsaProxy:Lvendor/mediatek/hardware/imsa/V1_0/IImsa;

    iget-object v1, p0, Lcom/mediatek/ims/ImsAdapter;->mImsaProxyDeathRecipient:Lcom/mediatek/ims/ImsAdapter$ImsaProxyDeathRecipient;

    iget-object v2, p0, Lcom/mediatek/ims/ImsAdapter;->mImsaProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 534
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v2

    .line 533
    invoke-interface {v0, v1, v2, v3}, Lvendor/mediatek/hardware/imsa/V1_0/IImsa;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 535
    const-string v0, "@M_[ImsAdapter]"

    const-string v1, "setResponseFunctions"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    iget-object v0, p0, Lcom/mediatek/ims/ImsAdapter;->mImsaProxy:Lvendor/mediatek/hardware/imsa/V1_0/IImsa;

    iget-object v1, p0, Lcom/mediatek/ims/ImsAdapter;->mImsaIndication:Lcom/mediatek/ims/ImsAdapter$ImsaIndication;

    invoke-interface {v0, v1}, Lvendor/mediatek/hardware/imsa/V1_0/IImsa;->setResponseFunctions(Lvendor/mediatek/hardware/imsa/V1_0/IImsaIndication;)V

    goto :goto_0

    .line 538
    :cond_1
    const-string v0, "@M_[ImsAdapter]"

    const-string v1, "getImsaProxy: mImsaProxy == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 543
    :goto_0
    goto :goto_1

    .line 540
    :catch_0
    move-exception v0

    .line 541
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/ims/ImsAdapter;->mImsaProxy:Lvendor/mediatek/hardware/imsa/V1_0/IImsa;

    .line 542
    const-string v1, "@M_[ImsAdapter]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImsaProxy getService/setResponseFunctions: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    iget-object v0, p0, Lcom/mediatek/ims/ImsAdapter;->mImsaProxy:Lvendor/mediatek/hardware/imsa/V1_0/IImsa;

    if-nez v0, :cond_2

    .line 546
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/mediatek/ims/ImsAdapter;->mImsaProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 548
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 547
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/ImsAdapter;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    .line 546
    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/ims/ImsAdapter;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 551
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ImsAdapter;->mImsaProxy:Lvendor/mediatek/hardware/imsa/V1_0/IImsa;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 646
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 666
    const-string v0, "@M_[ImsAdapter]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage receive unsupported message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 652
    :pswitch_0
    const-string v0, "@M_[ImsAdapter]"

    const-string v1, "MSG_IMSA_EVENT_PROXY_DEAD"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/mediatek/ims/ImsAdapter;->mImsaProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 654
    invoke-direct {p0}, Lcom/mediatek/ims/ImsAdapter;->resetProxyAndRequestList()V

    .line 657
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsAdapter;->getImsaProxy()Lvendor/mediatek/hardware/imsa/V1_0/IImsa;

    .line 658
    iget-object v0, p0, Lcom/mediatek/ims/ImsAdapter;->mImsaProxy:Lvendor/mediatek/hardware/imsa/V1_0/IImsa;

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Lcom/mediatek/ims/ImsAdapter;->mIO:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    iget-object v1, p0, Lcom/mediatek/ims/ImsAdapter;->mImsaProxy:Lvendor/mediatek/hardware/imsa/V1_0/IImsa;

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->updateImsaProxy(Lvendor/mediatek/hardware/imsa/V1_0/IImsa;)V

    goto :goto_0

    .line 648
    :pswitch_1
    const-string v0, "@M_[ImsAdapter]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RETRY_IMS_ENABLE, phoneId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ImsAdapter;->enableImsAdapter(I)V

    .line 650
    nop

    .line 669
    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public sendTestEvent(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .line 678
    sget-object v0, Lcom/mediatek/ims/ImsAdapter;->mImsEventDispatcher:Lcom/mediatek/ims/ImsEventDispatcher;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ImsEventDispatcher;->dispatchCallback(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V

    .line 679
    return-void
.end method
