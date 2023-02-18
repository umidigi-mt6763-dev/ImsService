.class public Lcom/mediatek/ims/ImsService;
.super Lcom/android/ims/ImsServiceBase;
.source "ImsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;,
        Lcom/mediatek/ims/ImsService$MyHandler;,
        Lcom/mediatek/ims/ImsService$IWifiOffloadServiceDeathRecipient;,
        Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;,
        Lcom/mediatek/ims/ImsService$NafSessionKeyResult;
    }
.end annotation


# static fields
.field private static final CONFIG_EXTRA_PHONE_ID:Ljava/lang/String; = "phone_id"

.field private static final DBG:Z = true

.field private static final ENGLOAD:Z

.field protected static final EVENT_CALL_INFO_INDICATION:I = 0x8

.field protected static final EVENT_IMS_DEREG_DONE:I = 0x10

.field protected static final EVENT_IMS_DEREG_URC:I = 0x11

.field protected static final EVENT_IMS_DISABLED_URC:I = 0x5

.field protected static final EVENT_IMS_DISABLING_URC:I = 0xc

.field protected static final EVENT_IMS_ENABLED_URC:I = 0xb

.field protected static final EVENT_IMS_ENABLING_URC:I = 0xa

.field private static final EVENT_IMS_REGISTRATION_INFO:I = 0x1

.field protected static final EVENT_IMS_RTP_INFO_URC:I = 0x14

.field protected static final EVENT_IMS_SMS_NEW_CDMA_SMS:I = 0x20

.field protected static final EVENT_IMS_SMS_NEW_SMS:I = 0x1f

.field protected static final EVENT_IMS_SMS_STATUS_REPORT:I = 0x1e

.field protected static final EVENT_IMS_SUPPORT_ECC_URC:I = 0x19

.field protected static final EVENT_IMS_VOLTE_SETTING_URC:I = 0x16

.field protected static final EVENT_INCOMING_CALL_INDICATION:I = 0x7

.field protected static final EVENT_INIT_CALL_SESSION_PROXY:I = 0x1b

.field protected static final EVENT_ON_NETWORK_INIT_USSI:I = 0xf

.field protected static final EVENT_RADIO_NOT_AVAILABLE:I = 0x2

.field protected static final EVENT_RADIO_OFF:I = 0x12

.field protected static final EVENT_RADIO_ON:I = 0x13

.field protected static final EVENT_RUN_GBA:I = 0x17

.field protected static final EVENT_SELF_IDENTIFY_UPDATE:I = 0x18

.field protected static final EVENT_SEND_SMS_DONE:I = 0x1c

.field protected static final EVENT_SET_IMS_DISABLE_DONE:I = 0x4

.field protected static final EVENT_SET_IMS_ENABLED_DONE:I = 0x3

.field protected static final EVENT_SET_IMS_REGISTRATION_REPORT_DONE:I = 0x15

.field protected static final EVENT_SIP_CODE_INDICATION:I = 0xd

.field protected static final EVENT_SIP_CODE_INDICATION_DEREG:I = 0xe

.field protected static final EVENT_START_GBA_SERVICE:I = 0x1a

.field protected static final EVENT_UT_CAPABILITY_CHANGE:I = 0x1d

.field private static final EVENT_VIRTUAL_SIM_ON:I = 0x6

.field private static final IMS_ALLOW_INCOMING_CALL_INDICATION:I = 0x0

.field private static final IMS_DISALLOW_INCOMING_CALL_INDICATION:I = 0x1

.field private static final IMS_MAX_FEATURE_SUPPORT_SIZE:I = 0x6

.field private static final IMS_RCS_OVER_LTE:I = 0x2

.field private static final IMS_REG_SIP_URI_TYPE_IMSI:I = 0x1

.field private static final IMS_REG_SIP_URI_TYPE_MSISDN:I = 0x0

.field private static final IMS_SERVICE:Ljava/lang/String; = "ims"

.field private static final IMS_SMS_OVER_LTE:I = 0x4

.field private static final IMS_SS_CMD_ERROR:I = 0x3

.field private static final IMS_SS_CMD_SUCCESS:I = 0x4

.field private static final IMS_SS_INTERRUPT_ERROR:I = 0x2

.field private static final IMS_SS_TIMEOUT_ERROR:I = 0x1

.field private static final IMS_VIDEO_OVER_LTE:I = 0x8

.field private static final IMS_VOICE_OVER_LTE:I = 0x1

.field private static final IMS_VOICE_OVER_WIFI:I = 0x10

.field private static final LOG_TAG:Ljava/lang/String; = "ImsService"

.field private static final PROPERTY_IMSCONFIG_FORCE_NOTIFY:Ljava/lang/String; = "vendor.ril.imsconfig.force.notify"

.field private static final PROPERTY_IMS_REG_EXTINFO:Ljava/lang/String; = "ril.ims.extinfo"

.field private static final VDBG:Z = false

.field protected static final mLock:Ljava/lang/Object;

.field private static mPendingMtkImsCallSessionProxy:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/mediatek/ims/ImsService;

.field private static sMtkImsRegImpl:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/ims/MtkImsRegistrationImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static sMtkSSExt:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/ims/MtkSuppServExt;",
            ">;"
        }
    .end annotation
.end field

.field private static sWifiOffloadService:Lcom/mediatek/wfo/IWifiOffloadService;


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mDeathRecipient:Lcom/mediatek/ims/ImsService$IWifiOffloadServiceDeathRecipient;

.field private mExpectedImsState:[I

.field private mFeatureValueReceiver:Landroid/content/BroadcastReceiver;

.field private mGbaConnection:Landroid/content/ServiceConnection;

.field private final mHandler:[Landroid/os/Handler;

.field private mImsAdapter:Lcom/mediatek/ims/ImsAdapter;

.field private mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

.field private mImsConfigManager:Lcom/mediatek/ims/ImsConfigManager;

.field private mImsDataTracker:Lcom/mediatek/ims/internal/ImsDataTracker;

.field private mImsEcbm:[Lcom/mediatek/ims/ImsEcbmProxy;

.field private mImsEvtPkgAdapter:[Lcom/mediatek/ims/ImsEventPackageAdapter;

.field private mImsExtInfo:[I

.field private mImsManagerOemPlugin:Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

.field private mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

.field private mImsRegInfo:[I

.field private mImsRegistry:Z

.field private mImsSmsListener:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/HashSet<",
            "Landroid/telephony/ims/aidl/IImsSmsListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mImsState:[I

.field private mIsImsEccSupported:[I

.field private mIsPendingMTTerminated:Z

.field private mListener:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/HashSet<",
            "Lcom/android/ims/internal/IImsRegistrationListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLockObj:Ljava/lang/Object;

.field private mLockUri:Ljava/lang/Object;

.field private final mMmTelFeatureCallback:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mMtkPendingMT:Lcom/mediatek/ims/MtkImsCallSessionProxy;

.field private mMultiEndpointMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/ims/internal/ImsMultiEndpointProxy;",
            ">;"
        }
    .end annotation
.end field

.field private mNumOfPhones:I

.field private mOpExt:Lcom/mediatek/ims/internal/op/OpImsService;

.field private mPendingMT:Lcom/mediatek/ims/ImsCallSessionProxy;

.field private mPendingMTCallId:Ljava/lang/String;

.field private mProxy:Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;

.field private mRAN:[I

.field private mRegErrorCode:[I

.field private mRegisterSubInfoChange:Z

.field private mServiceId:[I

.field private final mSubInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mVolteEnable:[Z

.field private mWaitFeatureChange:I

.field private mWaitSubInfoChange:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 164
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/ims/ImsService;->ENGLOAD:Z

    .line 179
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/ims/ImsService;->sWifiOffloadService:Lcom/mediatek/wfo/IWifiOffloadService;

    .line 184
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/mediatek/ims/ImsService;->sMtkImsRegImpl:Ljava/util/HashMap;

    .line 187
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/mediatek/ims/ImsService;->sMtkSSExt:Ljava/util/HashMap;

    .line 341
    sput-object v0, Lcom/mediatek/ims/ImsService;->sInstance:Lcom/mediatek/ims/ImsService;

    .line 342
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/ims/ImsService;->mLock:Ljava/lang/Object;

    .line 355
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mediatek/ims/ImsService;->mPendingMtkImsCallSessionProxy:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .line 424
    invoke-direct {p0}, Lcom/android/ims/ImsServiceBase;-><init>()V

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsAdapter:Lcom/mediatek/ims/ImsAdapter;

    .line 170
    iput-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    .line 171
    iput-object v0, p0, Lcom/mediatek/ims/ImsService;->mPendingMT:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 172
    iput-object v0, p0, Lcom/mediatek/ims/ImsService;->mMtkPendingMT:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    .line 175
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/mediatek/ims/ImsService;->mLockObj:Ljava/lang/Object;

    .line 176
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/mediatek/ims/ImsService;->mLockUri:Ljava/lang/Object;

    .line 180
    new-instance v1, Lcom/mediatek/ims/ImsService$IWifiOffloadServiceDeathRecipient;

    invoke-direct {v1, p0, v0}, Lcom/mediatek/ims/ImsService$IWifiOffloadServiceDeathRecipient;-><init>(Lcom/mediatek/ims/ImsService;Lcom/mediatek/ims/ImsService$1;)V

    iput-object v1, p0, Lcom/mediatek/ims/ImsService;->mDeathRecipient:Lcom/mediatek/ims/ImsService$IWifiOffloadServiceDeathRecipient;

    .line 182
    iput-object v0, p0, Lcom/mediatek/ims/ImsService;->mProxy:Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;

    .line 190
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/ims/ImsService;->mNumOfPhones:I

    .line 195
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/ims/ImsService;->mListener:Ljava/util/ArrayList;

    .line 211
    iput-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsConfigManager:Lcom/mediatek/ims/ImsConfigManager;

    .line 215
    iput-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsManagerOemPlugin:Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    .line 275
    iput-boolean v1, p0, Lcom/mediatek/ims/ImsService;->mIsPendingMTTerminated:Z

    .line 330
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/mediatek/ims/ImsService;->mMultiEndpointMap:Ljava/util/Map;

    .line 334
    iput-object v0, p0, Lcom/mediatek/ims/ImsService;->mOpExt:Lcom/mediatek/ims/internal/op/OpImsService;

    .line 337
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/ims/ImsService;->mImsSmsListener:Ljava/util/ArrayList;

    .line 346
    iput-boolean v1, p0, Lcom/mediatek/ims/ImsService;->mRegisterSubInfoChange:Z

    .line 349
    iput v1, p0, Lcom/mediatek/ims/ImsService;->mWaitFeatureChange:I

    .line 369
    iput-boolean v1, p0, Lcom/mediatek/ims/ImsService;->mImsRegistry:Z

    .line 370
    new-instance v2, Lcom/mediatek/ims/ImsService$1;

    invoke-direct {v2, p0}, Lcom/mediatek/ims/ImsService$1;-><init>(Lcom/mediatek/ims/ImsService;)V

    iput-object v2, p0, Lcom/mediatek/ims/ImsService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 606
    new-instance v2, Lcom/mediatek/ims/ImsService$3;

    invoke-direct {v2, p0}, Lcom/mediatek/ims/ImsService$3;-><init>(Lcom/mediatek/ims/ImsService;)V

    iput-object v2, p0, Lcom/mediatek/ims/ImsService;->mConnection:Landroid/content/ServiceConnection;

    .line 630
    new-instance v2, Lcom/mediatek/ims/ImsService$4;

    invoke-direct {v2, p0}, Lcom/mediatek/ims/ImsService$4;-><init>(Lcom/mediatek/ims/ImsService;)V

    iput-object v2, p0, Lcom/mediatek/ims/ImsService;->mGbaConnection:Landroid/content/ServiceConnection;

    .line 2642
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/mediatek/ims/ImsService;->mMmTelFeatureCallback:Landroid/util/SparseArray;

    .line 2777
    new-instance v2, Lcom/mediatek/ims/ImsService$5;

    invoke-direct {v2, p0}, Lcom/mediatek/ims/ImsService$5;-><init>(Lcom/mediatek/ims/ImsService;)V

    iput-object v2, p0, Lcom/mediatek/ims/ImsService;->mSubInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 2802
    new-instance v2, Lcom/mediatek/ims/ImsService$6;

    invoke-direct {v2, p0}, Lcom/mediatek/ims/ImsService$6;-><init>(Lcom/mediatek/ims/ImsService;)V

    iput-object v2, p0, Lcom/mediatek/ims/ImsService;->mFeatureValueReceiver:Landroid/content/BroadcastReceiver;

    .line 425
    const-string v2, "init"

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 426
    iput-object p1, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    .line 428
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    iput v2, p0, Lcom/mediatek/ims/ImsService;->mNumOfPhones:I

    .line 430
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMdAutoSetupIms()Z

    move-result v2

    if-nez v2, :cond_0

    .line 431
    new-instance v2, Lcom/mediatek/ims/ImsAdapter;

    invoke-direct {v2, p1}, Lcom/mediatek/ims/ImsAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/mediatek/ims/ImsService;->mImsAdapter:Lcom/mediatek/ims/ImsAdapter;

    .line 434
    :cond_0
    iget v2, p0, Lcom/mediatek/ims/ImsService;->mNumOfPhones:I

    new-array v2, v2, [Lcom/mediatek/ims/ImsService$MyHandler;

    iput-object v2, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    .line 435
    iget v2, p0, Lcom/mediatek/ims/ImsService;->mNumOfPhones:I

    new-array v2, v2, [Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iput-object v2, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    .line 436
    move v2, v1

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lcom/mediatek/ims/ImsService;->mNumOfPhones:I

    const/4 v4, 0x1

    if-ge v2, v3, :cond_2

    .line 437
    iget-object v3, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    new-instance v5, Lcom/mediatek/ims/ImsService$MyHandler;

    invoke-direct {v5, p0, v2}, Lcom/mediatek/ims/ImsService$MyHandler;-><init>(Lcom/mediatek/ims/ImsService;I)V

    aput-object v5, v3, v2

    .line 438
    new-instance v3, Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-direct {v3, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;-><init>(Landroid/content/Context;I)V

    .line 441
    .local v3, "ril":Lcom/mediatek/ims/ril/ImsRILAdapter;
    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v5, v5, v2

    const/4 v6, 0x2

    invoke-virtual {v3, v5, v6, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 442
    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v5, v5, v2

    const/16 v6, 0x12

    invoke-virtual {v3, v5, v6, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->registerForOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 443
    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v5, v5, v2

    const/16 v6, 0x13

    invoke-virtual {v3, v5, v6, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 445
    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v5, v5, v2

    invoke-virtual {v3, v5, v4, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->registerForImsRegistrationInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 446
    iget-object v4, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v4, v4, v2

    const/16 v5, 0xa

    invoke-virtual {v3, v4, v5, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->registerForImsEnableStart(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 447
    iget-object v4, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v4, v4, v2

    const/16 v5, 0xb

    invoke-virtual {v3, v4, v5, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->registerForImsEnableComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 448
    iget-object v4, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v4, v4, v2

    const/16 v5, 0xc

    invoke-virtual {v3, v4, v5, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->registerForImsDisableStart(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 449
    iget-object v4, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v4, v4, v2

    const/4 v5, 0x5

    invoke-virtual {v3, v4, v5, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->registerForImsDisableComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 450
    iget-object v4, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v4, v4, v2

    const/4 v5, 0x7

    invoke-virtual {v3, v4, v5, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->setOnIncomingCallIndication(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 451
    iget-object v4, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v4, v4, v2

    const/16 v5, 0xd

    invoke-virtual {v3, v4, v5, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->registerForCallProgressIndicator(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 452
    iget-object v4, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v4, v4, v2

    const/16 v5, 0x11

    invoke-virtual {v3, v4, v5, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->registerForImsDeregisterComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 454
    iget-object v4, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v4, v4, v2

    const/16 v5, 0x19

    invoke-virtual {v3, v4, v5, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->registerForImsEccSupport(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 458
    iget-object v4, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v4, v4, v2

    const/16 v5, 0xf

    invoke-virtual {v3, v4, v5, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->setOnNetworkInitUSSI(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 461
    iget-object v4, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v4, v4, v2

    const/16 v5, 0x14

    invoke-virtual {v3, v4, v5, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->registerForImsRTPInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 464
    iget-object v4, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v4, v4, v2

    const/16 v5, 0x16

    invoke-virtual {v3, v4, v5, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->registerForVolteSettingChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 467
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMdAutoSetupIms()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 468
    iget-object v4, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v4, v4, v2

    const/16 v5, 0x18

    invoke-virtual {v3, v4, v5, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->registerForXuiInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 471
    :cond_1
    iget-object v4, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v4, v4, v2

    const/16 v5, 0x1e

    invoke-virtual {v3, v4, v5, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->setOnSmsStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 472
    iget-object v4, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v4, v4, v2

    const/16 v5, 0x1f

    invoke-virtual {v3, v4, v5, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->setOnNewSms(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 473
    iget-object v4, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v4, v4, v2

    const/16 v5, 0x20

    invoke-virtual {v3, v4, v5, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->setOnNewCdmaSms(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 475
    iget-object v4, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aput-object v3, v4, v2

    .line 436
    .end local v3    # "ril":Lcom/mediatek/ims/ril/ImsRILAdapter;
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 479
    .end local v2    # "i":I
    :cond_2
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMdAutoSetupIms()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 480
    const-string v0, "Initializing"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 481
    new-instance v0, Lcom/mediatek/ims/internal/ImsDataTracker;

    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-direct {v0, p1, v2}, Lcom/mediatek/ims/internal/ImsDataTracker;-><init>(Landroid/content/Context;[Lcom/mediatek/ims/ril/ImsCommandsInterface;)V

    iput-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsDataTracker:Lcom/mediatek/ims/internal/ImsDataTracker;

    .line 485
    :cond_3
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 486
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "ACTION_IMS_SIMULATE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 488
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 489
    const-string v2, "com.mediatek.ims.action.self_identify_update"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 490
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 492
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 494
    iget v2, p0, Lcom/mediatek/ims/ImsService;->mNumOfPhones:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/mediatek/ims/ImsService;->mImsRegInfo:[I

    .line 495
    iget v2, p0, Lcom/mediatek/ims/ImsService;->mNumOfPhones:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/mediatek/ims/ImsService;->mImsExtInfo:[I

    .line 496
    iget v2, p0, Lcom/mediatek/ims/ImsService;->mNumOfPhones:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/mediatek/ims/ImsService;->mServiceId:[I

    .line 497
    iget v2, p0, Lcom/mediatek/ims/ImsService;->mNumOfPhones:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/mediatek/ims/ImsService;->mImsState:[I

    .line 498
    iget v2, p0, Lcom/mediatek/ims/ImsService;->mNumOfPhones:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/mediatek/ims/ImsService;->mExpectedImsState:[I

    .line 499
    iget v2, p0, Lcom/mediatek/ims/ImsService;->mNumOfPhones:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/mediatek/ims/ImsService;->mRegErrorCode:[I

    .line 500
    iget v2, p0, Lcom/mediatek/ims/ImsService;->mNumOfPhones:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/mediatek/ims/ImsService;->mRAN:[I

    .line 501
    iget v2, p0, Lcom/mediatek/ims/ImsService;->mNumOfPhones:I

    new-array v2, v2, [Lcom/mediatek/ims/ImsEcbmProxy;

    iput-object v2, p0, Lcom/mediatek/ims/ImsService;->mImsEcbm:[Lcom/mediatek/ims/ImsEcbmProxy;

    .line 502
    iget v2, p0, Lcom/mediatek/ims/ImsService;->mNumOfPhones:I

    new-array v2, v2, [Lcom/mediatek/ims/ImsEventPackageAdapter;

    iput-object v2, p0, Lcom/mediatek/ims/ImsService;->mImsEvtPkgAdapter:[Lcom/mediatek/ims/ImsEventPackageAdapter;

    .line 503
    new-instance v2, Lcom/mediatek/ims/ImsConfigManager;

    iget-object v3, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-direct {v2, p1, v3}, Lcom/mediatek/ims/ImsConfigManager;-><init>(Landroid/content/Context;[Lcom/mediatek/ims/ril/ImsCommandsInterface;)V

    iput-object v2, p0, Lcom/mediatek/ims/ImsService;->mImsConfigManager:Lcom/mediatek/ims/ImsConfigManager;

    .line 504
    iget v2, p0, Lcom/mediatek/ims/ImsService;->mNumOfPhones:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/mediatek/ims/ImsService;->mIsImsEccSupported:[I

    .line 506
    iget v2, p0, Lcom/mediatek/ims/ImsService;->mNumOfPhones:I

    new-array v2, v2, [Z

    iput-object v2, p0, Lcom/mediatek/ims/ImsService;->mWaitSubInfoChange:[Z

    .line 507
    iget v2, p0, Lcom/mediatek/ims/ImsService;->mNumOfPhones:I

    new-array v2, v2, [Z

    iput-object v2, p0, Lcom/mediatek/ims/ImsService;->mVolteEnable:[Z

    .line 510
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "MtkSSExt"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 511
    .local v2, "ssHandlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 512
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    .line 514
    .local v3, "sslooper":Landroid/os/Looper;
    move v5, v1

    .local v5, "i":I
    :goto_1
    iget v6, p0, Lcom/mediatek/ims/ImsService;->mNumOfPhones:I

    const/4 v7, 0x3

    if-ge v5, v6, :cond_5

    .line 515
    iget-object v6, p0, Lcom/mediatek/ims/ImsService;->mListener:Ljava/util/ArrayList;

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    iget-object v6, p0, Lcom/mediatek/ims/ImsService;->mImsRegInfo:[I

    aput v7, v6, v5

    .line 517
    iget-object v6, p0, Lcom/mediatek/ims/ImsService;->mImsExtInfo:[I

    aput v1, v6, v5

    .line 518
    iget-object v6, p0, Lcom/mediatek/ims/ImsService;->mServiceId:[I

    add-int/lit8 v7, v5, 0x1

    aput v7, v6, v5

    .line 519
    iget-object v6, p0, Lcom/mediatek/ims/ImsService;->mImsState:[I

    aput v1, v6, v5

    .line 520
    iget-object v6, p0, Lcom/mediatek/ims/ImsService;->mExpectedImsState:[I

    aput v1, v6, v5

    .line 521
    iget-object v6, p0, Lcom/mediatek/ims/ImsService;->mRegErrorCode:[I

    aput v1, v6, v5

    .line 522
    iget-object v6, p0, Lcom/mediatek/ims/ImsService;->mRAN:[I

    aput v4, v6, v5

    .line 523
    iget-object v6, p0, Lcom/mediatek/ims/ImsService;->mImsEcbm:[Lcom/mediatek/ims/ImsEcbmProxy;

    new-instance v7, Lcom/mediatek/ims/ImsEcbmProxy;

    iget-object v8, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v9, v9, v5

    invoke-direct {v7, v8, v9, v5}, Lcom/mediatek/ims/ImsEcbmProxy;-><init>(Landroid/content/Context;Lcom/mediatek/ims/ril/ImsCommandsInterface;I)V

    aput-object v7, v6, v5

    .line 524
    iget-object v6, p0, Lcom/mediatek/ims/ImsService;->mImsConfigManager:Lcom/mediatek/ims/ImsConfigManager;

    invoke-virtual {v6, v5}, Lcom/mediatek/ims/ImsConfigManager;->init(I)V

    .line 525
    iget-object v6, p0, Lcom/mediatek/ims/ImsService;->mIsImsEccSupported:[I

    aput v1, v6, v5

    .line 526
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMdAutoSetupIms()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 527
    sget-object v6, Lcom/mediatek/ims/ImsService;->sMtkSSExt:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Lcom/mediatek/ims/MtkSuppServExt;

    iget-object v9, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9, v5, p0, v3}, Lcom/mediatek/ims/MtkSuppServExt;-><init>(Landroid/content/Context;ILcom/mediatek/ims/ImsService;Landroid/os/Looper;)V

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    :cond_4
    iget-object v6, p0, Lcom/mediatek/ims/ImsService;->mImsEvtPkgAdapter:[Lcom/mediatek/ims/ImsEventPackageAdapter;

    new-instance v7, Lcom/mediatek/ims/ImsEventPackageAdapter;

    iget-object v8, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v9, v9, v5

    iget-object v10, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v10, v10, v5

    invoke-direct {v7, v8, v9, v10, v5}, Lcom/mediatek/ims/ImsEventPackageAdapter;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/mediatek/ims/ril/ImsCommandsInterface;I)V

    aput-object v7, v6, v5

    .line 533
    iget-object v6, p0, Lcom/mediatek/ims/ImsService;->mWaitSubInfoChange:[Z

    aput-boolean v1, v6, v5

    .line 534
    iget-object v6, p0, Lcom/mediatek/ims/ImsService;->mVolteEnable:[Z

    aput-boolean v1, v6, v5

    .line 514
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 540
    .end local v5    # "i":I
    :cond_5
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMims()Z

    move-result v4

    const/4 v5, 0x4

    const/16 v6, 0x15

    if-nez v4, :cond_7

    .line 541
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->getMainCapabilityPhoneId()I

    move-result v4

    .line 542
    .local v4, "mainPhoneId":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getMainCapabilityPhoneId: mainPhoneId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 545
    iget-object v8, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v8, v8, v4

    iget-object v9, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v9, v9, v4

    .line 546
    invoke-virtual {v9, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 545
    invoke-interface {v8, v6}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setImsRegistrationReport(Landroid/os/Message;)V

    .line 547
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMdAutoSetupIms()Z

    move-result v6

    if-nez v6, :cond_6

    .line 548
    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 549
    invoke-direct {p0, v4, v1, v7, v5}, Lcom/mediatek/ims/ImsService;->initImsAvailability(IIII)V

    .line 553
    .end local v4    # "mainPhoneId":I
    :cond_6
    goto :goto_3

    .line 554
    :cond_7
    nop

    .local v1, "i":I
    :goto_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    if-ge v1, v4, :cond_9

    .line 557
    iget-object v4, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v4, v4, v1

    iget-object v8, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v8, v8, v1

    .line 558
    invoke-virtual {v8, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 557
    invoke-interface {v4, v8}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setImsRegistrationReport(Landroid/os/Message;)V

    .line 559
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMdAutoSetupIms()Z

    move-result v4

    if-nez v4, :cond_8

    .line 560
    invoke-direct {p0, v1, v1, v7, v5}, Lcom/mediatek/ims/ImsService;->initImsAvailability(IIII)V

    .line 554
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 568
    .end local v1    # "i":I
    :cond_9
    :goto_3
    invoke-static {}, Lcom/mediatek/ims/internal/op/OpImsServiceFactoryBase;->getInstance()Lcom/mediatek/ims/internal/op/OpImsServiceFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/mediatek/ims/internal/op/OpImsServiceFactory;->makeOpImsService()Lcom/mediatek/ims/internal/op/OpImsService;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/ims/ImsService;->mOpExt:Lcom/mediatek/ims/internal/op/OpImsService;

    .line 571
    invoke-static {}, Lcom/mediatek/ims/plugin/ExtensionFactory;->makeOemPluginFactory()Lcom/mediatek/ims/plugin/OemPluginFactory;

    .line 572
    invoke-static {}, Lcom/mediatek/ims/plugin/ExtensionFactory;->makeExtensionPluginFactory()Lcom/mediatek/ims/plugin/ExtensionPluginFactory;

    .line 575
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMdAutoSetupIms()Z

    move-result v1

    if-nez v1, :cond_a

    .line 576
    invoke-direct {p0}, Lcom/mediatek/ims/ImsService;->startGbaService()V

    .line 579
    :cond_a
    invoke-direct {p0}, Lcom/mediatek/ims/ImsService;->startWfoService()V

    .line 580
    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 160
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/mediatek/ims/ImsService;)Landroid/content/ServiceConnection;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;

    .line 160
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/mediatek/ims/ImsService;)[I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;

    .line 160
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsRegInfo:[I

    return-object v0
.end method

.method static synthetic access$1400(Lcom/mediatek/ims/ImsService;)[I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;

    .line 160
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mRAN:[I

    return-object v0
.end method

.method static synthetic access$1500(Lcom/mediatek/ims/ImsService;IIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .line 160
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/ims/ImsService;->notifyRegistrationStateChange(IIZ)V

    return-void
.end method

.method static synthetic access$1600(Lcom/mediatek/ims/ImsService;)[I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;

    .line 160
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsExtInfo:[I

    return-object v0
.end method

.method static synthetic access$1700(Lcom/mediatek/ims/ImsService;IIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .line 160
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/ims/ImsService;->notifyRegistrationCapabilityChange(IIZ)V

    return-void
.end method

.method static synthetic access$1800(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 160
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/mediatek/ims/ImsService;)[I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;

    .line 160
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mExpectedImsState:[I

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/ims/ImsService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;

    .line 160
    iget-boolean v0, p0, Lcom/mediatek/ims/ImsService;->mImsRegistry:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/ril/ImsCommandsInterface;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;

    .line 160
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    return-object v0
.end method

.method static synthetic access$202(Lcom/mediatek/ims/ImsService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;
    .param p1, "x1"    # Z

    .line 160
    iput-boolean p1, p0, Lcom/mediatek/ims/ImsService;->mImsRegistry:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/mediatek/ims/ImsService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 160
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ImsService;->notifyRegistrationOOSStateChanged(II)V

    return-void
.end method

.method static synthetic access$2202(Lcom/mediatek/wfo/IWifiOffloadService;)Lcom/mediatek/wfo/IWifiOffloadService;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/wfo/IWifiOffloadService;

    .line 160
    sput-object p0, Lcom/mediatek/ims/ImsService;->sWifiOffloadService:Lcom/mediatek/wfo/IWifiOffloadService;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/mediatek/ims/ImsService;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;
    .param p1, "x1"    # I

    .line 160
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsService;->eventToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/mediatek/ims/ImsService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;
    .param p1, "x1"    # I

    .line 160
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsService;->enableImsAdapter(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/mediatek/ims/ImsService;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 160
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ImsService;->disableIms(IZ)V

    return-void
.end method

.method static synthetic access$2600(Lcom/mediatek/ims/ImsService;ILandroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/AsyncResult;

    .line 160
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ImsService;->sendIncomingCallIndication(ILandroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/mediatek/ims/ImsService;)Lcom/mediatek/ims/internal/op/OpImsService;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;

    .line 160
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mOpExt:Lcom/mediatek/ims/internal/op/OpImsService;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/mediatek/ims/ImsService;)Lcom/mediatek/ims/ext/IImsServiceExt;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;

    .line 160
    invoke-direct {p0}, Lcom/mediatek/ims/ImsService;->getOpImsService()Lcom/mediatek/ims/ext/IImsServiceExt;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lcom/mediatek/ims/ImsService;)[I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;

    .line 160
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mRegErrorCode:[I

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 160
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsService;->logw(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/mediatek/ims/ImsService;IILjava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .line 160
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/ims/ImsService;->mapToWfcRegErrorCause(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3102(Lcom/mediatek/ims/ImsService;Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsCallSessionProxy;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;
    .param p1, "x1"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 160
    iput-object p1, p0, Lcom/mediatek/ims/ImsService;->mPendingMT:Lcom/mediatek/ims/ImsCallSessionProxy;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/mediatek/ims/ImsService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;

    .line 160
    iget-boolean v0, p0, Lcom/mediatek/ims/ImsService;->mRegisterSubInfoChange:Z

    return v0
.end method

.method static synthetic access$3202(Lcom/mediatek/ims/ImsService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;
    .param p1, "x1"    # Z

    .line 160
    iput-boolean p1, p0, Lcom/mediatek/ims/ImsService;->mRegisterSubInfoChange:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/mediatek/ims/ImsService;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;

    .line 160
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mSubInfoReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/mediatek/ims/ImsService;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;

    .line 160
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mWaitSubInfoChange:[Z

    return-object v0
.end method

.method static synthetic access$3500(Lcom/mediatek/ims/ImsService;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;

    .line 160
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mVolteEnable:[Z

    return-object v0
.end method

.method static synthetic access$3600(Lcom/mediatek/ims/ImsService;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;

    .line 160
    iget v0, p0, Lcom/mediatek/ims/ImsService;->mWaitFeatureChange:I

    return v0
.end method

.method static synthetic access$3602(Lcom/mediatek/ims/ImsService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;
    .param p1, "x1"    # I

    .line 160
    iput p1, p0, Lcom/mediatek/ims/ImsService;->mWaitFeatureChange:I

    return p1
.end method

.method static synthetic access$3700(Lcom/mediatek/ims/ImsService;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;

    .line 160
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mFeatureValueReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/mediatek/ims/ImsService;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 160
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ImsService;->setEnhanced4gLteModeSetting(IZ)V

    return-void
.end method

.method static synthetic access$3900(Lcom/mediatek/ims/ImsService;Lcom/mediatek/ims/internal/ImsXuiManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;
    .param p1, "x1"    # Lcom/mediatek/ims/internal/ImsXuiManager;
    .param p2, "x2"    # I

    .line 160
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ImsService;->notifyRegistrationAssociatedUriChange(Lcom/mediatek/ims/internal/ImsXuiManager;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/ims/ImsService;)[Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;

    .line 160
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/mediatek/ims/ImsService;)[I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;

    .line 160
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mIsImsEccSupported:[I

    return-object v0
.end method

.method static synthetic access$4100(Lcom/mediatek/ims/ImsService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;

    .line 160
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mListener:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/mediatek/ims/ImsService;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;

    .line 160
    invoke-direct {p0}, Lcom/mediatek/ims/ImsService;->startGbaService()V

    return-void
.end method

.method static synthetic access$4300(Lcom/mediatek/ims/ImsService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;

    .line 160
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mPendingMTCallId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/mediatek/ims/ImsService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;

    .line 160
    iget-boolean v0, p0, Lcom/mediatek/ims/ImsService;->mIsPendingMTTerminated:Z

    return v0
.end method

.method static synthetic access$4402(Lcom/mediatek/ims/ImsService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;
    .param p1, "x1"    # Z

    .line 160
    iput-boolean p1, p0, Lcom/mediatek/ims/ImsService;->mIsPendingMTTerminated:Z

    return p1
.end method

.method static synthetic access$4500(Lcom/mediatek/ims/ImsService;)Lcom/mediatek/ims/MtkImsCallSessionProxy;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;

    .line 160
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mMtkPendingMT:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    return-object v0
.end method

.method static synthetic access$4502(Lcom/mediatek/ims/ImsService;Lcom/mediatek/ims/MtkImsCallSessionProxy;)Lcom/mediatek/ims/MtkImsCallSessionProxy;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;
    .param p1, "x1"    # Lcom/mediatek/ims/MtkImsCallSessionProxy;

    .line 160
    iput-object p1, p0, Lcom/mediatek/ims/ImsService;->mMtkPendingMT:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    return-object p1
.end method

.method static synthetic access$4600(Lcom/mediatek/ims/ImsService;)Landroid/telephony/ims/ImsCallProfile;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;

    .line 160
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/mediatek/ims/ImsService;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;

    .line 160
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mMmTelFeatureCallback:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/mediatek/ims/ImsService;Landroid/os/AsyncResult;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;
    .param p1, "x1"    # Landroid/os/AsyncResult;
    .param p2, "x2"    # I

    .line 160
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ImsService;->handleNewCdmaSms(Landroid/os/AsyncResult;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/mediatek/ims/ImsService;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;

    .line 160
    invoke-direct {p0}, Lcom/mediatek/ims/ImsService;->bindAndRegisterMWIService()V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/ims/ImsService;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;

    .line 160
    iget v0, p0, Lcom/mediatek/ims/ImsService;->mNumOfPhones:I

    return v0
.end method

.method static synthetic access$700(Lcom/mediatek/ims/ImsService;)[I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;

    .line 160
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsState:[I

    return-object v0
.end method

.method static synthetic access$800(Lcom/mediatek/ims/ImsService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;

    .line 160
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mediatek/ims/ImsService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;
    .param p1, "x1"    # I

    .line 160
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsService;->resetXuiAndNotify(I)V

    return-void
.end method

.method private bindAndRegisterMWIService()V
    .locals 0

    .line 1403
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsService;->bindAndRegisterWifiOffloadService()V

    .line 1404
    return-void
.end method

.method private checkAndBindWifiOffloadService()V
    .locals 4

    .line 1338
    const-string v0, "wfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1340
    .local v0, "b":Landroid/os/IBinder;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1342
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mDeathRecipient:Lcom/mediatek/ims/ImsService$IWifiOffloadServiceDeathRecipient;

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1344
    goto :goto_0

    .line 1343
    :catch_0
    move-exception v1

    .line 1345
    :goto_0
    invoke-static {v0}, Lcom/mediatek/wfo/IWifiOffloadService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/wfo/IWifiOffloadService;

    move-result-object v1

    sput-object v1, Lcom/mediatek/ims/ImsService;->sWifiOffloadService:Lcom/mediatek/wfo/IWifiOffloadService;

    goto :goto_3

    .line 1347
    :cond_0
    const-string v2, "can\'t get WifiOffloadService"

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 1348
    const-string v2, "mwis"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1350
    if-eqz v0, :cond_1

    .line 1351
    :try_start_1
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mDeathRecipient:Lcom/mediatek/ims/ImsService$IWifiOffloadServiceDeathRecipient;

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 1352
    invoke-static {v0}, Lcom/mediatek/wfo/IMwiService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/wfo/IMwiService;

    move-result-object v1

    invoke-interface {v1}, Lcom/mediatek/wfo/IMwiService;->getWfcHandlerInterface()Lcom/mediatek/wfo/IWifiOffloadService;

    move-result-object v1

    sput-object v1, Lcom/mediatek/ims/ImsService;->sWifiOffloadService:Lcom/mediatek/wfo/IWifiOffloadService;

    goto :goto_1

    .line 1356
    :catch_1
    move-exception v1

    goto :goto_2

    .line 1354
    :cond_1
    const-string v1, "No MwiService exist"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1358
    :goto_1
    goto :goto_3

    .line 1356
    :goto_2
    nop

    .line 1357
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "ImsService"

    const-string v3, "can\'t get MwiService"

    invoke-static {v2, v3, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1361
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkAndBindWifiOffloadService: sWifiOffloadService = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/mediatek/ims/ImsService;->sWifiOffloadService:Lcom/mediatek/wfo/IWifiOffloadService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1363
    return-void
.end method

.method private convertCapabilities([I)Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    .locals 6
    .param p1, "enabledFeatures"    # [I

    .line 2654
    array-length v0, p1

    new-array v0, v0, [Z

    .line 2655
    .local v0, "featuresEnabled":[Z
    const/4 v1, 0x0

    move v2, v1

    .line 2657
    .local v2, "i":I
    :goto_0
    const/4 v3, 0x5

    const/4 v4, 0x1

    if-gt v2, v3, :cond_2

    array-length v5, p1

    if-ge v2, v5, :cond_2

    .line 2658
    aget v3, p1, v2

    if-ne v3, v2, :cond_0

    .line 2659
    aput-boolean v4, v0, v2

    goto :goto_1

    .line 2660
    :cond_0
    aget v3, p1, v2

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 2662
    aput-boolean v1, v0, v2

    .line 2657
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2665
    .end local v2    # "i":I
    :cond_2
    new-instance v2, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-direct {v2}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;-><init>()V

    .line 2666
    .local v2, "capabilities":Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    aget-boolean v1, v0, v1

    const/4 v5, 0x2

    if-nez v1, :cond_3

    aget-boolean v1, v0, v5

    if-eqz v1, :cond_4

    .line 2669
    :cond_3
    invoke-virtual {v2, v4}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->addCapabilities(I)V

    .line 2671
    :cond_4
    aget-boolean v1, v0, v4

    if-nez v1, :cond_5

    const/4 v1, 0x3

    aget-boolean v1, v0, v1

    if-eqz v1, :cond_6

    .line 2674
    :cond_5
    invoke-virtual {v2, v5}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->addCapabilities(I)V

    .line 2676
    :cond_6
    const/4 v1, 0x4

    aget-boolean v4, v0, v1

    if-nez v4, :cond_7

    aget-boolean v3, v0, v3

    if-eqz v3, :cond_8

    .line 2679
    :cond_7
    invoke-virtual {v2, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->addCapabilities(I)V

    .line 2681
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertCapabilities - capabilities: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 2682
    return-object v2
.end method

.method private convertImsRegistrationTech(I)I
    .locals 1
    .param p1, "tech"    # I

    .line 2756
    const/16 v0, 0xe

    if-eq p1, v0, :cond_1

    const/16 v0, 0x12

    if-eq p1, v0, :cond_0

    .line 2762
    const/4 v0, -0x1

    return v0

    .line 2760
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 2758
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private createImsReasonInfo(I)Landroid/telephony/ims/ImsReasonInfo;
    .locals 5
    .param p1, "phoneId"    # I

    .line 1438
    const/4 v0, 0x0

    .line 1439
    .local v0, "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mRegErrorCode:[I

    aget v2, v2, p1

    iget-object v3, p0, Lcom/mediatek/ims/ImsService;->mRegErrorCode:[I

    aget v3, v3, p1

    .line 1440
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3e8

    invoke-direct {v1, v4, v2, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v0, v1

    .line 1441
    return-object v0
.end method

.method private createWifiOffloadListenerProxy()Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;
    .locals 2

    .line 1178
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mProxy:Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;

    if-nez v0, :cond_0

    .line 1179
    const-string v0, "create WifiOffloadListenerProxy"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1180
    new-instance v0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;-><init>(Lcom/mediatek/ims/ImsService;Lcom/mediatek/ims/ImsService$1;)V

    iput-object v0, p0, Lcom/mediatek/ims/ImsService;->mProxy:Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;

    .line 1182
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mProxy:Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;

    return-object v0
.end method

.method private disableIms(IZ)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "isNormalDisable"    # Z

    .line 2247
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMdAutoSetupIms()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2248
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ImsService;->disableImsAdapter(IZ)V

    .line 2250
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsState:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 2252
    return-void
.end method

.method private disableImsAdapter(IZ)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "isNormalDisable"    # Z

    .line 592
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsAdapter:Lcom/mediatek/ims/ImsAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/ims/ImsAdapter;->disableImsAdapter(IZ)V

    .line 593
    return-void
.end method

.method private enableImsAdapter(I)V
    .locals 1
    .param p1, "phoneId"    # I

    .line 588
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsAdapter:Lcom/mediatek/ims/ImsAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ImsAdapter;->enableImsAdapter(I)V

    .line 589
    return-void
.end method

.method private englog(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 2290
    sget-boolean v0, Lcom/mediatek/ims/ImsService;->ENGLOAD:Z

    if-eqz v0, :cond_0

    .line 2291
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 2293
    :cond_0
    return-void
.end method

.method private eventToString(I)Ljava/lang/String;
    .locals 2
    .param p1, "eventId"    # I

    .line 1688
    packed-switch p1, :pswitch_data_0

    .line 1750
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN EVENT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1748
    :pswitch_1
    const-string v0, "EVENT_IMS_SMS_NEW_CDMA_SMS"

    return-object v0

    .line 1746
    :pswitch_2
    const-string v0, "EVENT_IMS_SMS_NEW_SMS"

    return-object v0

    .line 1744
    :pswitch_3
    const-string v0, "EVENT_IMS_SMS_STATUS_REPORT"

    return-object v0

    .line 1742
    :pswitch_4
    const-string v0, "EVENT_SEND_SMS_DONE"

    return-object v0

    .line 1740
    :pswitch_5
    const-string v0, "EVENT_INIT_CALL_SESSION_PROXY"

    return-object v0

    .line 1738
    :pswitch_6
    const-string v0, "EVENT_START_GBA_SERVICE"

    return-object v0

    .line 1736
    :pswitch_7
    const-string v0, "EVENT_IMS_SUPPORT_ECC_URC"

    return-object v0

    .line 1734
    :pswitch_8
    const-string v0, "EVENT_SELF_IDENTIFY_UPDATE"

    return-object v0

    .line 1732
    :pswitch_9
    const-string v0, "EVENT_RUN_GBA"

    return-object v0

    .line 1730
    :pswitch_a
    const-string v0, "EVENT_IMS_VOLTE_SETTING_URC"

    return-object v0

    .line 1728
    :pswitch_b
    const-string v0, "EVENT_SET_IMS_REGISTRATION_REPORT_DONE"

    return-object v0

    .line 1726
    :pswitch_c
    const-string v0, "EVENT_IMS_RTP_INFO_URC"

    return-object v0

    .line 1724
    :pswitch_d
    const-string v0, "EVENT_RADIO_ON"

    return-object v0

    .line 1722
    :pswitch_e
    const-string v0, "EVENT_RADIO_OFF"

    return-object v0

    .line 1720
    :pswitch_f
    const-string v0, "EVENT_IMS_DEREG_URC"

    return-object v0

    .line 1718
    :pswitch_10
    const-string v0, "EVENT_IMS_DEREG_DONE"

    return-object v0

    .line 1716
    :pswitch_11
    const-string v0, "EVENT_ON_NETWORK_INIT_USSI"

    return-object v0

    .line 1714
    :pswitch_12
    const-string v0, "EVENT_SIP_CODE_INDICATION_DEREG"

    return-object v0

    .line 1712
    :pswitch_13
    const-string v0, "EVENT_SIP_CODE_INDICATION"

    return-object v0

    .line 1710
    :pswitch_14
    const-string v0, "EVENT_IMS_DISABLING_URC"

    return-object v0

    .line 1708
    :pswitch_15
    const-string v0, "EVENT_IMS_ENABLED_URC"

    return-object v0

    .line 1706
    :pswitch_16
    const-string v0, "EVENT_IMS_ENABLING_URC"

    return-object v0

    .line 1704
    :pswitch_17
    const-string v0, "EVENT_CALL_INFO_INDICATION"

    return-object v0

    .line 1702
    :pswitch_18
    const-string v0, "EVENT_INCOMING_CALL_INDICATION"

    return-object v0

    .line 1700
    :pswitch_19
    const-string v0, "EVENT_VIRTUAL_SIM_ON"

    return-object v0

    .line 1698
    :pswitch_1a
    const-string v0, "EVENT_IMS_DISABLED_URC"

    return-object v0

    .line 1696
    :pswitch_1b
    const-string v0, "EVENT_SET_IMS_DISABLE_DONE"

    return-object v0

    .line 1694
    :pswitch_1c
    const-string v0, "EVENT_SET_IMS_ENABLED_DONE"

    return-object v0

    .line 1692
    :pswitch_1d
    const-string v0, "EVENT_RADIO_NOT_AVAILABLE"

    return-object v0

    .line 1690
    :pswitch_1e
    const-string v0, "EVENT_IMS_REGISTRATION_INFO"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/mediatek/ims/ImsService;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 359
    sget-object v0, Lcom/mediatek/ims/ImsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 360
    :try_start_0
    sget-object v1, Lcom/mediatek/ims/ImsService;->sInstance:Lcom/mediatek/ims/ImsService;

    if-nez v1, :cond_0

    if-eqz p0, :cond_0

    .line 361
    new-instance v1, Lcom/mediatek/ims/ImsService;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/ImsService;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mediatek/ims/ImsService;->sInstance:Lcom/mediatek/ims/ImsService;

    .line 362
    sget-object v1, Lcom/mediatek/ims/ImsService;->sInstance:Lcom/mediatek/ims/ImsService;

    const-string v2, "ImsService is created!"

    invoke-direct {v1, v2}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 364
    :cond_0
    sget-object v1, Lcom/mediatek/ims/ImsService;->sInstance:Lcom/mediatek/ims/ImsService;

    monitor-exit v0

    return-object v1

    .line 365
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getOpImsService()Lcom/mediatek/ims/ext/IImsServiceExt;
    .locals 2

    .line 584
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/ims/ext/OpImsServiceCustomizationUtils;->getOpFactory(Landroid/content/Context;)Lcom/mediatek/ims/ext/OpImsServiceCustomizationFactoryBase;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ext/OpImsServiceCustomizationFactoryBase;->makeImsServiceExt(Landroid/content/Context;)Lcom/mediatek/ims/ext/IImsServiceExt;

    move-result-object v0

    return-object v0
.end method

.method private getRadioTech(I)I
    .locals 3
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1407
    const/4 v0, 0x0

    .line 1409
    .local v0, "radioTech":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRadioTech mRAN = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mRAN:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1411
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMdAutoSetupIms()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1412
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsService;->bindAndRegisterWifiOffloadService()V

    .line 1414
    sget-object v1, Lcom/mediatek/ims/ImsService;->sWifiOffloadService:Lcom/mediatek/wfo/IWifiOffloadService;

    if-eqz v1, :cond_1

    .line 1415
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mRAN:[I

    sget-object v2, Lcom/mediatek/ims/ImsService;->sWifiOffloadService:Lcom/mediatek/wfo/IWifiOffloadService;

    invoke-interface {v2, p1}, Lcom/mediatek/wfo/IWifiOffloadService;->getRatType(I)I

    move-result v2

    aput v2, v1, p1

    goto :goto_0

    .line 1420
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/ims/ImsService;->bindAndRegisterMWIService()V

    .line 1423
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mRAN:[I

    aget v1, v1, p1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    .line 1430
    const/16 v0, 0xe

    goto :goto_1

    .line 1425
    :cond_2
    const/16 v0, 0x12

    .line 1426
    nop

    .line 1433
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRadioTech mRAN="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mRAN:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", radioTech="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1434
    return v0
.end method

.method private handleNewCdmaSms(Landroid/os/AsyncResult;I)Z
    .locals 8
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "socketId"    # I

    .line 2523
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception processing incoming SMS: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 2525
    return v1

    .line 2527
    :cond_0
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/SmsMessage;

    .line 2528
    .local v0, "sms":Landroid/telephony/SmsMessage;
    if-nez v0, :cond_1

    .line 2529
    const-string v2, "SmsMessage is null"

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 2530
    return v1

    .line 2532
    :cond_1
    iget-object v2, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    .line 2533
    .local v2, "smsb":Lcom/android/internal/telephony/SmsMessageBase;
    if-nez v2, :cond_2

    .line 2534
    const-string v3, "SmsMessageBase is null"

    invoke-direct {p0, v3}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 2535
    return v1

    .line 2537
    :cond_2
    iget-object v3, p0, Lcom/mediatek/ims/ImsService;->mMmTelFeatureCallback:Landroid/util/SparseArray;

    if-nez v3, :cond_3

    .line 2538
    const-string v3, "mMmTelFeatureCallback is null"

    invoke-direct {p0, v3}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 2539
    return v1

    .line 2541
    :cond_3
    const/4 v3, 0x0

    .line 2542
    .local v3, "statusReport":Z
    move-object v4, v2

    check-cast v4, Lcom/android/internal/telephony/cdma/SmsMessage;

    .line 2544
    .local v4, "cdmaSms":Lcom/android/internal/telephony/cdma/SmsMessage;
    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageType()I

    move-result v5

    if-nez v5, :cond_5

    .line 2547
    :try_start_0
    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseSms()V

    .line 2548
    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->isStatusReportMessage()Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_4

    .line 2549
    const/4 v1, 0x1

    .line 2554
    .end local v3    # "statusReport":Z
    .local v1, "statusReport":Z
    move v3, v1

    .end local v1    # "statusReport":Z
    .restart local v3    # "statusReport":Z
    :cond_4
    goto :goto_0

    .line 2551
    :catch_0
    move-exception v5

    .line 2552
    .local v5, "ex":Ljava/lang/RuntimeException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception dispatching message: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 2553
    return v1

    .line 2556
    .end local v5    # "ex":Ljava/lang/RuntimeException;
    :cond_5
    :goto_0
    if-eqz v3, :cond_6

    .line 2557
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_IMS_SMS_STATUS_REPORT, socketId = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 2558
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mMmTelFeatureCallback:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;

    .line 2559
    invoke-virtual {v2}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v5

    const-string v6, "3gpp2"

    .line 2558
    invoke-interface {v1, v5, v6}, Lcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;->newStatusReportInd([BLjava/lang/String;)V

    goto :goto_1

    .line 2562
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_IMS_SMS_NEW_SMS, socketId = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 2563
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mMmTelFeatureCallback:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;

    .line 2564
    invoke-virtual {v2}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v5

    const-string v6, "3gpp2"

    .line 2563
    invoke-interface {v1, v5, v6}, Lcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;->newImsSmsInd([BLjava/lang/String;)V

    .line 2567
    :goto_1
    const/4 v1, 0x1

    return v1
.end method

.method private initImsAvailability(IIII)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "capabilityOffset"    # I
    .param p3, "enableMessageId"    # I
    .param p4, "disableMessageId"    # I

    .line 2261
    const-string v0, "persist.vendor.mtk.volte.enable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2262
    .local v0, "volteCapability":I
    const-string v2, "persist.vendor.mtk.wfc.enable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2263
    .local v1, "wfcCapability":I
    const/4 v2, 0x1

    shl-int v3, v2, p2

    and-int/2addr v3, v0

    if-gtz v3, :cond_1

    shl-int/2addr v2, p2

    and-int/2addr v2, v1

    if-lez v2, :cond_0

    goto :goto_0

    .line 2269
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initImsAvailability turnOffIms : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 2270
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v2, v2, p1

    iget-object v3, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v3, v3, p1

    invoke-virtual {v3, p4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->turnOffIms(Landroid/os/Message;)V

    .line 2271
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mImsState:[I

    const/4 v3, 0x3

    aput v3, v2, p1

    goto :goto_1

    .line 2265
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initImsAvailability turnOnIms : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 2266
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v2, v2, p1

    iget-object v3, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v3, v3, p1

    invoke-virtual {v3, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->turnOnIms(Landroid/os/Message;)V

    .line 2267
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mImsState:[I

    const/4 v3, 0x2

    aput v3, v2, p1

    .line 2276
    :goto_1
    sget-object v2, Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;

    invoke-virtual {v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;->ordinal()I

    move-result v2

    invoke-virtual {p0, v2, p1}, Lcom/mediatek/ims/ImsService;->updateRadioState(II)V

    .line 2277
    return-void
.end method

.method public static synthetic lambda$notifyRegistrationAssociatedUriChange$0(Lcom/mediatek/ims/ImsService;[Landroid/net/Uri;Lcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 2
    .param p1, "uris"    # [Landroid/net/Uri;
    .param p2, "l"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .line 1475
    :try_start_0
    invoke-interface {p2, p1}, Lcom/android/ims/internal/IImsRegistrationListener;->registrationAssociatedUriChanged([Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1478
    goto :goto_0

    .line 1476
    :catch_0
    move-exception v0

    .line 1477
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "handle self identify update failed!!"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 1479
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method static synthetic lambda$notifyRegistrationCapabilityChange$3([I[ILcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 1
    .param p0, "enabledFeatures"    # [I
    .param p1, "disabledFeatures"    # [I
    .param p2, "l"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .line 1658
    const/4 v0, 0x1

    :try_start_0
    invoke-interface {p2, v0, p0, p1}, Lcom/android/ims/internal/IImsRegistrationListener;->registrationFeatureCapabilityChanged(I[I[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1662
    goto :goto_0

    .line 1660
    :catch_0
    move-exception v0

    .line 1663
    :goto_0
    return-void
.end method

.method public static synthetic lambda$notifyRegistrationStateChange$1(Lcom/mediatek/ims/ImsService;ILcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 2
    .param p1, "radioTech"    # I
    .param p2, "l"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .line 1527
    nop

    .line 1528
    :try_start_0
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsService;->convertImsRegistrationTech(I)I

    move-result v0

    .line 1527
    invoke-interface {p2, v0}, Lcom/android/ims/internal/IImsRegistrationListener;->registrationConnectedWithRadioTech(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1532
    goto :goto_0

    .line 1529
    :catch_0
    move-exception v0

    .line 1531
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "IMS: l.registrationConnectedWithRadioTech failed"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 1533
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method static synthetic lambda$notifyRegistrationStateChange$2(Landroid/telephony/ims/ImsReasonInfo;Lcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 1
    .param p0, "imsReasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;
    .param p1, "l"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .line 1557
    :try_start_0
    invoke-interface {p1, p0}, Lcom/android/ims/internal/IImsRegistrationListener;->registrationDisconnected(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1560
    goto :goto_0

    .line 1558
    :catch_0
    move-exception v0

    .line 1561
    :goto_0
    return-void
.end method

.method public static synthetic lambda$resetXuiAndNotify$4(Lcom/mediatek/ims/ImsService;[Landroid/net/Uri;Lcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 2
    .param p1, "uris"    # [Landroid/net/Uri;
    .param p2, "l"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .line 2471
    :try_start_0
    invoke-interface {p2, p1}, Lcom/android/ims/internal/IImsRegistrationListener;->registrationAssociatedUriChanged([Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2474
    goto :goto_0

    .line 2472
    :catch_0
    move-exception v0

    .line 2473
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "clear self identify failed!!"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 2475
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 2285
    const-string v0, "ImsService"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2287
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 2300
    const-string v0, "ImsService"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2301
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 2304
    const-string v0, "ImsService"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2305
    return-void
.end method

.method private logw(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 2296
    const-string v0, "ImsService"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2297
    return-void
.end method

.method private mapToWfcRegErrorCause(IILjava/lang/String;)I
    .locals 3
    .param p1, "sipErrorCode"    # I
    .param p2, "sipMethod"    # I
    .param p3, "sipReasonText"    # Ljava/lang/String;

    .line 1195
    const/16 v0, 0x3e7

    .line 1197
    .local v0, "wfcRegErrorCode":I
    const/16 v1, 0x193

    if-eq p1, v1, :cond_3

    const/16 v1, 0x1f4

    if-eq p1, v1, :cond_2

    const/16 v1, 0x1f7

    if-eq p1, v1, :cond_1

    const/16 v1, 0x25e

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1229
    :pswitch_0
    const/16 v0, 0x645

    .line 1230
    goto :goto_0

    .line 1226
    :pswitch_1
    const/16 v0, 0x644

    .line 1227
    goto :goto_0

    .line 1223
    :pswitch_2
    const/16 v0, 0x643

    .line 1224
    goto :goto_0

    .line 1219
    :pswitch_3
    const/16 v0, 0x642

    .line 1220
    goto :goto_0

    .line 1216
    :pswitch_4
    const/16 v0, 0x641

    .line 1217
    goto :goto_0

    .line 1243
    :cond_0
    if-nez p2, :cond_7

    const-string v1, "Not Acceptable"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1244
    const/16 v0, 0x6a7

    goto :goto_0

    .line 1235
    :cond_1
    if-nez p2, :cond_7

    const-string v1, "Emergency Calls over Wi-Fi is not allowed in this location"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1239
    const/16 v0, 0x6a6

    goto :goto_0

    .line 1232
    :cond_2
    const/16 v0, 0x57e

    .line 1233
    goto :goto_0

    .line 1199
    :cond_3
    const/16 v1, 0x9

    if-ne p2, v1, :cond_4

    const-string v1, "SHOW_WIFI_REG09"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1201
    const/16 v0, 0x6a5

    goto :goto_0

    .line 1202
    :cond_4
    if-nez p2, :cond_5

    const-string v1, "WiFi Calling Not Allowed from this Region"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1205
    const/16 v0, 0x646

    goto :goto_0

    .line 1207
    :cond_5
    if-nez p2, :cond_6

    .line 1209
    const/16 v0, 0x640

    goto :goto_0

    .line 1212
    :cond_6
    const/16 v0, 0x643

    .line 1214
    nop

    .line 1250
    :cond_7
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mapToWfcRegErrorCause(), sipErrorCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " sipMethod:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " sipReasonText: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " wfcRegErrorCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1252
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x9d6d
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private notifyCapabilityChanged(ILandroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "c"    # Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    .line 2686
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mMmTelFeatureCallback:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2687
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mMmTelFeatureCallback:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;

    invoke-interface {v0, p2}, Lcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;->notifyCapabilitiesChanged(Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)V

    .line 2689
    :cond_0
    return-void
.end method

.method private notifyIncomingCall(ILandroid/telephony/ims/stub/ImsCallSessionImplBase;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "c"    # Landroid/telephony/ims/stub/ImsCallSessionImplBase;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 2692
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mMmTelFeatureCallback:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2693
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mMmTelFeatureCallback:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;

    invoke-interface {v0, p2, p3}, Lcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;->notifyIncomingCall(Landroid/telephony/ims/stub/ImsCallSessionImplBase;Landroid/os/Bundle;)V

    .line 2695
    :cond_0
    return-void
.end method

.method private notifyRegistrationAssociatedUriChange(Lcom/mediatek/ims/internal/ImsXuiManager;I)V
    .locals 3
    .param p1, "xuiManager"    # Lcom/mediatek/ims/internal/ImsXuiManager;
    .param p2, "phoneId"    # I

    .line 1467
    invoke-virtual {p1, p2}, Lcom/mediatek/ims/internal/ImsXuiManager;->getSelfIdentifyUri(I)[Landroid/net/Uri;

    move-result-object v0

    .line 1468
    .local v0, "uris":[Landroid/net/Uri;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyRegistrationAssociatedUriChange phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1469
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uris="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->englog(Ljava/lang/String;)V

    .line 1470
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mListener:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    .line 1471
    .local v1, "listeners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/ims/internal/IImsRegistrationListener;>;"
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1472
    monitor-enter v1

    .line 1473
    :try_start_0
    new-instance v2, Lcom/mediatek/ims/-$$Lambda$ImsService$GZ0ahyx7HZsBpKxFCTrTHOwrNgo;

    invoke-direct {v2, p0, v0}, Lcom/mediatek/ims/-$$Lambda$ImsService$GZ0ahyx7HZsBpKxFCTrTHOwrNgo;-><init>(Lcom/mediatek/ims/ImsService;[Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->forEach(Ljava/util/function/Consumer;)V

    .line 1480
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1482
    :cond_0
    :goto_0
    invoke-direct {p0, p2, v0}, Lcom/mediatek/ims/ImsService;->updateAssociatedUriChanged(I[Landroid/net/Uri;)V

    .line 1483
    return-void
.end method

.method private notifyRegistrationCapabilityChange(IIZ)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "imsExtInfo"    # I
    .param p3, "staticReg"    # Z

    .line 1633
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyRegistrationCapabilityChange imsExtInfo= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", staticReg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1636
    const/4 v0, 0x6

    new-array v1, v0, [I

    .line 1637
    .local v1, "enabledFeatures":[I
    new-array v0, v0, [I

    .line 1638
    .local v0, "disabledFeatures":[I
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/mediatek/ims/ImsService;->updateCapabilityChange(II[I[I)V

    .line 1641
    invoke-direct {p0, p1, v1, v0}, Lcom/mediatek/ims/ImsService;->updateUtCapabilityChange(I[I[I)V

    .line 1644
    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->convertCapabilities([I)Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    move-result-object v2

    .line 1645
    .local v2, "capabilities":Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    and-int/lit8 v3, p2, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 1646
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->addCapabilities(I)V

    .line 1648
    :cond_0
    if-nez p3, :cond_1

    .line 1649
    invoke-direct {p0, p1, v2}, Lcom/mediatek/ims/ImsService;->notifyCapabilityChanged(ILandroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)V

    .line 1652
    :cond_1
    iget-object v3, p0, Lcom/mediatek/ims/ImsService;->mListener:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    .line 1654
    .local v3, "listeners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/ims/internal/IImsRegistrationListener;>;"
    if-eqz v3, :cond_2

    .line 1655
    monitor-enter v3

    .line 1656
    :try_start_0
    new-instance v4, Lcom/mediatek/ims/-$$Lambda$ImsService$sGyuO-fMTVKW5uTQaanmVvFXSWU;

    invoke-direct {v4, v1, v0}, Lcom/mediatek/ims/-$$Lambda$ImsService$sGyuO-fMTVKW5uTQaanmVvFXSWU;-><init>([I[I)V

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->forEach(Ljava/util/function/Consumer;)V

    .line 1664
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1666
    :cond_2
    :goto_0
    return-void
.end method

.method private notifyRegistrationOOSStateChanged(II)V
    .locals 6
    .param p1, "simId"    # I
    .param p2, "oosState"    # I

    .line 2593
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 2594
    .local v0, "listeners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/ims/internal/IImsRegistrationListener;>;"
    if-nez v0, :cond_0

    .line 2595
    const-string v1, "notifyRegistrationOOSStateChanged: listeners is null"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 2596
    return-void

    .line 2598
    :cond_0
    monitor-enter v0

    .line 2599
    const/4 v1, 0x5

    .line 2600
    .local v1, "resultEvent":I
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 2610
    :pswitch_0
    const/4 v1, 0x7

    goto :goto_0

    .line 2606
    :pswitch_1
    const/4 v1, 0x5

    .line 2608
    goto :goto_0

    .line 2602
    :pswitch_2
    const/4 v1, 0x6

    .line 2604
    nop

    .line 2615
    :goto_0
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyRegistrationOOSStateChanged listener size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 2616
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/ims/internal/IImsRegistrationListener;

    .line 2617
    .local v3, "l":Lcom/android/ims/internal/IImsRegistrationListener;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "call registrationServiceCapabilityChanged with event: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 2618
    const/4 v4, 0x1

    invoke-interface {v3, v4, v1}, Lcom/android/ims/internal/IImsRegistrationListener;->registrationServiceCapabilityChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2620
    .end local v3    # "l":Lcom/android/ims/internal/IImsRegistrationListener;
    goto :goto_1

    .line 2623
    :cond_1
    goto :goto_2

    .line 2624
    .end local v1    # "resultEvent":I
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 2621
    .restart local v1    # "resultEvent":I
    :catch_0
    move-exception v2

    .line 2622
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 2624
    .end local v1    # "resultEvent":I
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_2
    monitor-exit v0

    .line 2625
    return-void

    .line 2624
    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private notifyRegistrationStateChange(IIZ)V
    .locals 7
    .param p1, "phoneId"    # I
    .param p2, "imsRegInfo"    # I
    .param p3, "staticReg"    # Z

    .line 1507
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1508
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyRegistrationStateChange imsRegInfo= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", staticReg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mRAN[phoneId]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mRAN:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1512
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mListener:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1513
    .local v1, "listeners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/ims/internal/IImsRegistrationListener;>;"
    if-nez p2, :cond_3

    .line 1515
    :try_start_1
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsService;->getRadioTech(I)I

    move-result v2

    .line 1517
    .local v2, "radioTech":I
    if-nez p3, :cond_0

    .line 1518
    const/4 v3, 0x2

    .line 1520
    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsService;->convertImsRegistrationTech(I)I

    move-result v4

    const/4 v5, 0x0

    .line 1518
    invoke-direct {p0, p1, v3, v4, v5}, Lcom/mediatek/ims/ImsService;->updateImsRegstration(IIILandroid/telephony/ims/ImsReasonInfo;)V

    .line 1523
    :cond_0
    if-eqz v1, :cond_1

    .line 1524
    monitor-enter v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1525
    :try_start_2
    new-instance v3, Lcom/mediatek/ims/-$$Lambda$ImsService$ovv8aqkEpIO_ROFE-YcE9X_HzDI;

    invoke-direct {v3, p0, v2}, Lcom/mediatek/ims/-$$Lambda$ImsService$ovv8aqkEpIO_ROFE-YcE9X_HzDI;-><init>(Lcom/mediatek/ims/ImsService;I)V

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->forEach(Ljava/util/function/Consumer;)V

    .line 1534
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3

    .line 1537
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/mediatek/ims/ImsService;->getOpImsService()Lcom/mediatek/ims/ext/IImsServiceExt;

    move-result-object v3

    .line 1538
    .local v3, "opImsService":Lcom/mediatek/ims/ext/IImsServiceExt;
    if-eqz v3, :cond_2

    .line 1539
    iget-object v4, p0, Lcom/mediatek/ims/ImsService;->mRAN:[I

    aget v4, v4, p1

    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v5, v5, p1

    iget-object v6, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v6, v6, p1

    invoke-interface {v3, v4, v5, v6}, Lcom/mediatek/ims/ext/IImsServiceExt;->notifyRegistrationStateChange(ILandroid/os/Handler;Ljava/lang/Object;)V

    .line 1542
    :cond_2
    iget-object v4, p0, Lcom/mediatek/ims/ImsService;->mRegErrorCode:[I

    const/4 v5, 0x0

    aput v5, v4, p1
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .end local v2    # "radioTech":I
    .end local v3    # "opImsService":Lcom/mediatek/ims/ext/IImsServiceExt;
    goto :goto_1

    .line 1543
    :catch_0
    move-exception v2

    .line 1544
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v3, "IMS: notifyStateChange fail on access WifiOffloadService"

    invoke-direct {p0, v3}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 1545
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_2

    .line 1547
    :cond_3
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsService;->createImsReasonInfo(I)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v2

    .line 1549
    .local v2, "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    const/4 v3, 0x3

    const/4 v4, -0x1

    invoke-direct {p0, p1, v3, v4, v2}, Lcom/mediatek/ims/ImsService;->updateImsRegstration(IIILandroid/telephony/ims/ImsReasonInfo;)V

    .line 1553
    if-eqz v1, :cond_4

    .line 1554
    monitor-enter v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1555
    :try_start_5
    new-instance v3, Lcom/mediatek/ims/-$$Lambda$ImsService$1Q4WNSe95uxmtIgl2mDBkt0WleE;

    invoke-direct {v3, v2}, Lcom/mediatek/ims/-$$Lambda$ImsService$1Q4WNSe95uxmtIgl2mDBkt0WleE;-><init>(Landroid/telephony/ims/ImsReasonInfo;)V

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->forEach(Ljava/util/function/Consumer;)V

    .line 1562
    monitor-exit v1

    goto :goto_2

    :catchall_1
    move-exception v3

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v3

    .line 1565
    .end local v1    # "listeners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/ims/internal/IImsRegistrationListener;>;"
    .end local v2    # "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    :cond_4
    :goto_2
    monitor-exit v0

    .line 1566
    return-void

    .line 1565
    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v1
.end method

.method private resetXuiAndNotify(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 2463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetXuiAndNotify() phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 2464
    invoke-static {}, Lcom/mediatek/ims/internal/ImsXuiManager;->getInstance()Lcom/mediatek/ims/internal/ImsXuiManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/ims/internal/ImsXuiManager;->setXui(ILjava/lang/String;)V

    .line 2465
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/net/Uri;

    const-string v1, ""

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2466
    .local v0, "uris":[Landroid/net/Uri;
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mListener:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    .line 2467
    .local v1, "listeners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/ims/internal/IImsRegistrationListener;>;"
    if-eqz v1, :cond_0

    .line 2468
    monitor-enter v1

    .line 2469
    :try_start_0
    new-instance v2, Lcom/mediatek/ims/-$$Lambda$ImsService$FjfXO7_7sxN84aO5RoWE5NZ54GI;

    invoke-direct {v2, p0, v0}, Lcom/mediatek/ims/-$$Lambda$ImsService$FjfXO7_7sxN84aO5RoWE5NZ54GI;-><init>(Lcom/mediatek/ims/ImsService;[Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->forEach(Ljava/util/function/Consumer;)V

    .line 2476
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2478
    :cond_0
    :goto_0
    return-void
.end method

.method private sendIncomingCallIndication(ILandroid/os/AsyncResult;)V
    .locals 18
    .param p1, "phoneId"    # I
    .param p2, "ar"    # Landroid/os/AsyncResult;

    move-object/from16 v7, p0

    move/from16 v8, p1

    .line 2377
    move-object/from16 v9, p2

    const/4 v0, 0x0

    iput-boolean v0, v7, Lcom/mediatek/ims/ImsService;->mIsPendingMTTerminated:Z

    .line 2379
    iget-object v1, v7, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v1, v1, v8

    iget-object v2, v7, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v2, v2, v8

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForCallInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2382
    iget-object v1, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    aget-object v10, v1, v0

    .line 2383
    .local v10, "callId":Ljava/lang/String;
    iput-object v10, v7, Lcom/mediatek/ims/ImsService;->mPendingMTCallId:Ljava/lang/String;

    .line 2385
    iget-object v0, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v11, v0, v1

    .line 2386
    .local v11, "dialString":Ljava/lang/String;
    iget-object v0, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v12, v0, v2

    .line 2387
    .local v12, "callMode":Ljava/lang/String;
    iget-object v0, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v13, v0, v2

    .line 2388
    .local v13, "seqNum":Ljava/lang/String;
    iget-object v0, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v14, v0, v2

    .line 2390
    .local v14, "toLineNum":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendIncomingCallIndication() : call_id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " dialString = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " seqNum = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " phoneId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 2394
    invoke-static/range {p1 .. p1}, Lcom/mediatek/ims/ImsServiceCallTracker;->getInstance(I)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v15

    .line 2396
    .local v15, "imsCallTracker":Lcom/mediatek/ims/ImsServiceCallTracker;
    const/4 v0, 0x1

    .line 2399
    .local v0, "isAllow":Z
    const-string v2, "persist.vendor.radio.terminal-based.cw"

    const-string v3, "disabled_tbcw"

    invoke-static {v8, v2, v3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2403
    .local v6, "callWaitingSetting":Ljava/lang/String;
    const-string v2, "enabled_tbcw_off"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v1, :cond_0

    invoke-virtual {v15}, Lcom/mediatek/ims/ImsServiceCallTracker;->isInCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2405
    const-string v1, "sendIncomingCallIndication() : PROPERTY_TBCW_MODE = TBCW_OFF. Reject the call as UDUB "

    invoke-direct {v7, v1}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 2407
    const/4 v0, 0x0

    .line 2411
    :cond_0
    invoke-virtual {v15}, Lcom/mediatek/ims/ImsServiceCallTracker;->isEccExist()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2412
    const-string v1, "sendIncomingCallIndication() : there is an ECC call, dis-allow this incoming call!"

    invoke-direct {v7, v1}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 2413
    const/4 v0, 0x0

    .line 2417
    :cond_1
    sget-object v1, Lcom/mediatek/ims/OperatorUtils$OPID;->OP01:Lcom/mediatek/ims/OperatorUtils$OPID;

    invoke-static {v1, v8}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2419
    const-string v1, "sendIncomingCallIndication() : OP01 case"

    invoke-direct {v7, v1}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 2422
    invoke-virtual {v15}, Lcom/mediatek/ims/ImsServiceCallTracker;->isVideoCallExist()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2423
    const-string v1, "sendIncomingCallIndication() : there is video calls, dis-allow this incoming call!"

    invoke-direct {v7, v1}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 2424
    const/4 v0, 0x0

    goto :goto_0

    .line 2427
    :cond_2
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v15, v1}, Lcom/mediatek/ims/ImsServiceCallTracker;->isVideoCall(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v15}, Lcom/mediatek/ims/ImsServiceCallTracker;->isInCall()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2428
    const-string v1, "sendIncomingCallIndication() : MT is video calls during call, dis-allow this incoming call!"

    invoke-direct {v7, v1}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 2429
    const/4 v0, 0x0

    .line 2433
    .end local v0    # "isAllow":Z
    .local v16, "isAllow":Z
    :cond_3
    :goto_0
    move/from16 v16, v0

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move-object v0, v7

    move v1, v8

    move-object v2, v10

    move-object v3, v11

    move-object v5, v14

    move-object/from16 v17, v6

    move/from16 v6, v16

    .end local v6    # "callWaitingSetting":Ljava/lang/String;
    .local v17, "callWaitingSetting":Ljava/lang/String;
    invoke-virtual/range {v0 .. v6}, Lcom/mediatek/ims/ImsService;->onSetCallIndication(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 2447
    return-void
.end method

.method private setEnhanced4gLteModeSetting(IZ)V
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "enabled"    # Z

    .line 2825
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    .line 2827
    .local v0, "imsMgr":Lcom/android/ims/ImsManager;
    if-eqz v0, :cond_1

    .line 2828
    invoke-virtual {v0, p2}, Lcom/android/ims/ImsManager;->setEnhanced4gLteModeSetting(Z)V

    .line 2829
    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isServiceReady()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2831
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mImsConfigManager:Lcom/mediatek/ims/ImsConfigManager;

    invoke-virtual {v1, p1}, Lcom/mediatek/ims/ImsConfigManager;->get(I)Lcom/android/ims/internal/IImsConfig;

    move-result-object v1

    const/16 v2, 0xd

    .line 2834
    const/4 v3, 0x0

    if-eqz p2, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    .line 2835
    :cond_0
    move v4, v3

    :goto_0
    const/4 v5, 0x0

    .line 2831
    invoke-interface {v1, v3, v2, v4, v5}, Lcom/android/ims/internal/IImsConfig;->setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V

    .line 2837
    const-string v1, "volte_setting setEnhanced4gLteModeSetting with service not ready yet."

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2838
    :catch_0
    move-exception v1

    .line 2839
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "volte_setting setEnhanced4gLteModeSetting with exception."

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 2840
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_2

    .line 2843
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] Fail to setEnhanced4gLteModeSetting because imsMgr is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 2845
    :cond_2
    :goto_2
    return-void
.end method

.method private startGbaService()V
    .locals 6

    .line 619
    const-string v0, "start gba service"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 620
    const/4 v0, 0x0

    .line 621
    .local v0, "phoneId":I
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.mediatek.START_GBA"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 622
    .local v1, "gbaIntent":Landroid/content/Intent;
    const-string v2, "com.mediatek.gba"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 624
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/ims/ImsService;->mGbaConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 625
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v3, v3, v0

    const/16 v4, 0x1a

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 628
    :cond_0
    return-void
.end method

.method private startWfoService()V
    .locals 2

    .line 596
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mediatek/ims/ImsService$2;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/ImsService$2;-><init>(Lcom/mediatek/ims/ImsService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 603
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 604
    return-void
.end method

.method private updateAssociatedUriChanged(I[Landroid/net/Uri;)V
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "uris"    # [Landroid/net/Uri;

    .line 1486
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mLockUri:Ljava/lang/Object;

    monitor-enter v0

    .line 1487
    :try_start_0
    sget-object v1, Lcom/mediatek/ims/ImsService;->sMtkImsRegImpl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/MtkImsRegistrationImpl;

    .line 1488
    .local v1, "imsReg":Lcom/mediatek/ims/MtkImsRegistrationImpl;
    if-eqz v1, :cond_0

    .line 1489
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] updateAssociatedUriChanged"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1490
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uris="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsService;->englog(Ljava/lang/String;)V

    .line 1491
    invoke-virtual {v1, p2}, Lcom/mediatek/ims/MtkImsRegistrationImpl;->onSubscriberAssociatedUriChanged([Landroid/net/Uri;)V

    goto :goto_0

    .line 1493
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There is not ImsRegistrationImpl for slot "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 1495
    .end local v1    # "imsReg":Lcom/mediatek/ims/MtkImsRegistrationImpl;
    :goto_0
    monitor-exit v0

    .line 1496
    return-void

    .line 1495
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateCapabilityChange(II[I[I)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "imsExtInfo"    # I
    .param p3, "enabledFeatures"    # [I
    .param p4, "disabledFeatures"    # [I

    .line 1570
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    .line 1571
    const/4 v2, -0x1

    aput v2, p3, v1

    .line 1572
    aput v2, p4, v1

    .line 1570
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1575
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mRAN:[I

    aget v1, v1, p1

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v3, :cond_1

    and-int/lit8 v1, p2, 0x1

    if-ne v1, v4, :cond_1

    .line 1577
    aput v0, p3, v0

    .line 1579
    aput v2, p3, v2

    goto :goto_1

    .line 1582
    :cond_1
    aput v0, p4, v0

    .line 1584
    aput v2, p4, v2

    .line 1588
    :goto_1
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mRAN:[I

    aget v0, v0, p1

    const/16 v1, 0x8

    if-eq v0, v3, :cond_2

    and-int/lit8 v0, p2, 0x8

    if-ne v0, v1, :cond_2

    .line 1590
    aput v4, p3, v4

    goto :goto_2

    .line 1593
    :cond_2
    aput v4, p4, v4

    .line 1597
    :goto_2
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mRAN:[I

    aget v0, v0, p1

    const/4 v2, 0x5

    if-ne v0, v3, :cond_3

    and-int/lit8 v0, p2, 0x1

    if-ne v0, v4, :cond_3

    .line 1599
    aput v3, p3, v3

    .line 1601
    aput v2, p3, v2

    .line 1603
    const-string v0, "[WFC]IMS_VOICE_OVER_WIFI"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 1605
    :cond_3
    aput v3, p4, v3

    .line 1607
    aput v2, p4, v2

    .line 1611
    :goto_3
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mRAN:[I

    aget v0, v0, p1

    const/4 v2, 0x3

    if-ne v0, v3, :cond_4

    and-int/lit8 v0, p2, 0x8

    if-ne v0, v1, :cond_4

    .line 1613
    aput v2, p3, v2

    .line 1615
    const-string v0, "[WFC]IMS_VIDEO_OVER_WIFI"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    goto :goto_4

    .line 1617
    :cond_4
    aput v2, p4, v2

    .line 1621
    :goto_4
    return-void
.end method

.method private updateImsRegstration(IIILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "state"    # I
    .param p3, "imsRadioTech"    # I
    .param p4, "reason"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 2735
    sget-object v0, Lcom/mediatek/ims/ImsService;->sMtkImsRegImpl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/MtkImsRegistrationImpl;

    .line 2736
    .local v0, "imsReg":Lcom/mediatek/ims/MtkImsRegistrationImpl;
    if-eqz v0, :cond_0

    .line 2737
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " updateImsRegstration, tech "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", reason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 2739
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 2747
    :pswitch_0
    invoke-virtual {v0, p4}, Lcom/mediatek/ims/MtkImsRegistrationImpl;->onDeregistered(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_0

    .line 2744
    :pswitch_1
    invoke-virtual {v0, p3}, Lcom/mediatek/ims/MtkImsRegistrationImpl;->onRegistered(I)V

    .line 2745
    goto :goto_0

    .line 2741
    :pswitch_2
    invoke-virtual {v0, p3}, Lcom/mediatek/ims/MtkImsRegistrationImpl;->onRegistering(I)V

    .line 2742
    goto :goto_0

    .line 2750
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There is not ImsRegistrationImpl for slot "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 2752
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateUtCapabilityChange(I[I[I)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "enabledFeatures"    # [I
    .param p3, "disabledFeatures"    # [I

    .line 1676
    sget-object v0, Lcom/mediatek/ims/ImsService;->sMtkSSExt:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1677
    sget-object v0, Lcom/mediatek/ims/ImsService;->sMtkSSExt:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/MtkSuppServExt;

    invoke-virtual {v0}, Lcom/mediatek/ims/MtkSuppServExt;->getUtCapabilityFromSettings()I

    move-result v0

    .line 1678
    .local v0, "utCap":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateUtCapabilityChange, add Ut capability, utCap = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1680
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1681
    const/4 v1, 0x4

    aput v1, p2, v1

    .line 1685
    .end local v0    # "utCap":I
    :cond_0
    return-void
.end method


# virtual methods
.method public acknowledgeLastIncomingCdmaSms(IZI)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "success"    # Z
    .param p3, "cause"    # I

    .line 2518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "acknowledgeLastIncomingCdmaSms, success "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", cause "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 2519
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-interface {v0, p2, p3, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->acknowledgeLastIncomingCdmaSmsEx(ZILandroid/os/Message;)V

    .line 2520
    return-void
.end method

.method public acknowledgeLastIncomingGsmSms(IZI)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "success"    # Z
    .param p3, "cause"    # I

    .line 2513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "acknowledgeLastIncomingGsmSms, success "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", cause "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 2514
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-interface {v0, p2, p3, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    .line 2515
    return-void
.end method

.method bindAndRegisterWifiOffloadService()V
    .locals 2

    .line 1379
    sget-object v0, Lcom/mediatek/ims/ImsService;->sWifiOffloadService:Lcom/mediatek/wfo/IWifiOffloadService;

    if-nez v0, :cond_1

    .line 1381
    invoke-direct {p0}, Lcom/mediatek/ims/ImsService;->checkAndBindWifiOffloadService()V

    .line 1382
    sget-object v0, Lcom/mediatek/ims/ImsService;->sWifiOffloadService:Lcom/mediatek/wfo/IWifiOffloadService;

    if-eqz v0, :cond_0

    .line 1384
    :try_start_0
    sget-object v0, Lcom/mediatek/ims/ImsService;->sWifiOffloadService:Lcom/mediatek/wfo/IWifiOffloadService;

    .line 1385
    invoke-direct {p0}, Lcom/mediatek/ims/ImsService;->createWifiOffloadListenerProxy()Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;

    move-result-object v1

    .line 1384
    invoke-interface {v0, v1}, Lcom/mediatek/wfo/IWifiOffloadService;->registerForHandoverEvent(Lcom/mediatek/wfo/IWifiOffloadListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1386
    :catch_0
    move-exception v0

    .line 1387
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "can\'t register handover event"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 1388
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 1390
    :cond_0
    const-string v0, "persist.vendor.mtk_wfc_support"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1391
    const-string v0, "can\'t get WifiOffloadService"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 1395
    :cond_1
    :goto_1
    return-void
.end method

.method protected deregisterIms(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 1058
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deregisterIms, phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1059
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMims()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1060
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->getMainCapabilityPhoneId()I

    move-result p1

    .line 1061
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deregisterIms, MainCapabilityPhoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1063
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v1, v1, p1

    const/16 v2, 0x10

    .line 1064
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1063
    invoke-interface {v0, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->deregisterIms(Landroid/os/Message;)V

    .line 1065
    return-void
.end method

.method public deregisterImsWithCause(II)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "cause"    # I

    .line 1071
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deregisterImsWithCause, phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cause = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1073
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMims()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1074
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->getMainCapabilityPhoneId()I

    move-result p1

    .line 1075
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deregisterImsWithCause, MainCapabilityPhoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1077
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v1, v1, p1

    const/16 v2, 0x10

    .line 1078
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1077
    invoke-interface {v0, p2, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->deregisterImsWithCause(ILandroid/os/Message;)V

    .line 1079
    return-void
.end method

.method public disableIms(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 945
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "turnOffIms, phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 946
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/ImsService;->onTurnOffIms(I)V

    .line 947
    return-void
.end method

.method public enableIms(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 931
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "turnOnIms phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 932
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/ImsService;->onTurnOnIms(I)V

    .line 933
    return-void
.end method

.method public explicitCallTransfer(ILandroid/os/Message;Landroid/os/Messenger;)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "result"    # Landroid/os/Message;
    .param p3, "target"    # Landroid/os/Messenger;

    .line 2573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "explicitCallTransfer: phoneId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 2575
    invoke-static {p1}, Lcom/mediatek/ims/ImsServiceCallTracker;->getInstance(I)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v0

    .line 2576
    .local v0, "imsCallTracker":Lcom/mediatek/ims/ImsServiceCallTracker;
    invoke-virtual {v0}, Lcom/mediatek/ims/ImsServiceCallTracker;->getFgCall()Lcom/mediatek/ims/ImsCallSessionProxy;

    move-result-object v1

    .line 2578
    .local v1, "fgCallSession":Lcom/mediatek/ims/ImsCallSessionProxy;
    if-eqz v1, :cond_0

    .line 2579
    invoke-virtual {v1, p2, p3}, Lcom/mediatek/ims/ImsCallSessionProxy;->explicitCallTransferWithCallback(Landroid/os/Message;Landroid/os/Messenger;)V

    goto :goto_0

    .line 2582
    :cond_0
    const/4 v2, 0x0

    iput v2, p2, Landroid/os/Message;->arg1:I

    .line 2585
    :try_start_0
    invoke-virtual {p3, p2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2588
    goto :goto_0

    .line 2586
    :catch_0
    move-exception v2

    .line 2587
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 2590
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method getCurrentCallCount(I)I
    .locals 2
    .param p1, "phoneId"    # I

    .line 2450
    if-ltz p1, :cond_1

    iget v0, p0, Lcom/mediatek/ims/ImsService;->mNumOfPhones:I

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 2455
    :cond_0
    invoke-static {p1}, Lcom/mediatek/ims/ImsServiceCallTracker;->getInstance(I)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsServiceCallTracker;->getCurrentCallCount()I

    move-result v0

    return v0

    .line 2451
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IMS: getCurrentCallCount() phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 2452
    const/4 v0, 0x0

    return v0
.end method

.method public getImsConfigManager()Lcom/mediatek/ims/ImsConfigManager;
    .locals 1

    .line 1331
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsConfigManager:Lcom/mediatek/ims/ImsConfigManager;

    return-object v0
.end method

.method public getImsNetworkState(I)[I
    .locals 1
    .param p1, "capability"    # I

    .line 2480
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsDataTracker:Lcom/mediatek/ims/internal/ImsDataTracker;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/internal/ImsDataTracker;->getImsNetworkState(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getImsRILAdapter(I)Lcom/mediatek/ims/ril/ImsCommandsInterface;
    .locals 2
    .param p1, "phoneId"    # I

    .line 1324
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 1325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getImsRILAdapter phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mImsRILAdapter is null "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->logw(Ljava/lang/String;)V

    .line 1327
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v0, v0, p1

    return-object v0
.end method

.method protected getImsRegUriType(I)I
    .locals 4
    .param p1, "phoneId"    # I

    .line 1035
    const/4 v0, 0x1

    .line 1036
    .local v0, "uri_type":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ril.ims.extinfo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1038
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mImsRegInfo:[I

    aget v2, v2, p1

    if-nez v2, :cond_0

    .line 1039
    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1041
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getImsRegUriType, phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "uri_type ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1043
    return v0
.end method

.method public getImsServiceState(I)I
    .locals 1
    .param p1, "phoneId"    # I

    .line 1150
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMims()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1151
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->getMainCapabilityPhoneId()I

    move-result p1

    .line 1154
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsRegInfo:[I

    aget v0, v0, p1

    return v0
.end method

.method protected getImsState(I)I
    .locals 1
    .param p1, "phoneId"    # I

    .line 1026
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsState:[I

    aget v0, v0, p1

    return v0
.end method

.method public getModemMultiImsCount()I
    .locals 4

    .line 1162
    const-string v0, "getModemMultiImsCount"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1163
    const-string v0, "ro.vendor.md_mims_support"

    .line 1164
    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1165
    .local v0, "mdMultiImsCount":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mdMultiImsCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1166
    if-ne v0, v1, :cond_0

    .line 1167
    const-string v1, "MD Multi IMS Count not initialized"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->logw(Ljava/lang/String;)V

    .line 1169
    :cond_0
    return v0
.end method

.method public getRatType(I)I
    .locals 1
    .param p1, "phoneId"    # I

    .line 2280
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mRAN:[I

    aget v0, v0, p1

    return v0
.end method

.method public getSubIdUsingPhoneId(I)I
    .locals 4
    .param p1, "phoneId"    # I

    .line 2768
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 2769
    .local v0, "subIds":[I
    const/4 v1, -0x1

    .line 2770
    .local v1, "subId":I
    if-eqz v0, :cond_0

    array-length v2, v0

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 2771
    const/4 v2, 0x0

    aget v1, v0, v2

    .line 2773
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getSubIdUsingPhoneId] volte_setting subId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 2774
    return v1
.end method

.method public isImsEccSupported(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .line 2459
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mIsImsEccSupported:[I

    aget v0, v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSupportCFT(I)Z
    .locals 4
    .param p1, "phoneId"    # I

    .line 2849
    sget-object v0, Lcom/mediatek/ims/ImsService;->sMtkSSExt:Ljava/util/HashMap;

    monitor-enter v0

    .line 2850
    const/4 v1, 0x0

    .line 2851
    .local v1, "isSupport":Z
    :try_start_0
    sget-object v2, Lcom/mediatek/ims/ImsService;->sMtkSSExt:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2852
    sget-object v2, Lcom/mediatek/ims/ImsService;->sMtkSSExt:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/MtkSuppServExt;

    invoke-virtual {v2}, Lcom/mediatek/ims/MtkSuppServExt;->isSupportCFT()Z

    move-result v2

    move v1, v2

    .line 2854
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupportCFT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 2855
    monitor-exit v0

    return v1

    .line 2856
    .end local v1    # "isSupport":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public mapPhoneIdToServiceId(I)I
    .locals 1
    .param p1, "phoneId"    # I

    .line 1141
    add-int/lit8 v0, p1, 0x1

    return v0
.end method

.method public notifyIncomingCallSession(ILcom/android/ims/internal/IImsCallSession;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "c"    # Lcom/android/ims/internal/IImsCallSession;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 2698
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mMmTelFeatureCallback:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2700
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mMmTelFeatureCallback:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;

    invoke-interface {v0, p2, p3}, Lcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;->notifyIncomingCallSession(Lcom/android/ims/internal/IImsCallSession;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2703
    goto :goto_0

    .line 2701
    :catch_0
    move-exception v0

    .line 2702
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to notifyIncomingCallSession "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 2705
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method public notifyUtCapabilityChange(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .line 1669
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyUtCapabilityChange, phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1670
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v1, v1, p1

    const/16 v2, 0x1d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1672
    return-void
.end method

.method protected onAddImsSmsListener(ILandroid/telephony/ims/aidl/IImsSmsListener;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Landroid/telephony/ims/aidl/IImsSmsListener;

    .line 2485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAddImsSmsListener: phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " listener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 2486
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsSmsListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 2487
    .local v0, "listeners":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/telephony/ims/aidl/IImsSmsListener;>;"
    monitor-enter v0

    .line 2488
    :try_start_0
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2490
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 2492
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2493
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IMS SMS listener set size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 2494
    monitor-exit v0

    .line 2495
    return-void

    .line 2494
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onAddRegistrationListener(IILcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "serviceType"    # I
    .param p3, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .line 708
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAddRegistrationListener: phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " serviceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " listener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 710
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 711
    .local v0, "listeners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/ims/internal/IImsRegistrationListener;>;"
    monitor-enter v0

    .line 712
    :try_start_0
    invoke-virtual {v0, p3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 713
    const-string v1, "listener already exist"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 715
    :cond_0
    invoke-virtual {v0, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 716
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "listener set size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 718
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 719
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mImsRegInfo:[I

    aget v1, v1, p1

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    .line 720
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mImsRegInfo:[I

    aget v1, v1, p1

    invoke-direct {p0, p1, v1, v3}, Lcom/mediatek/ims/ImsService;->notifyRegistrationStateChange(IIZ)V

    .line 723
    :cond_1
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mImsRegInfo:[I

    aget v1, v1, p1

    if-nez v1, :cond_2

    .line 724
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mImsExtInfo:[I

    aget v1, v1, p1

    invoke-direct {p0, p1, v1, v3}, Lcom/mediatek/ims/ImsService;->notifyRegistrationCapabilityChange(IIZ)V

    .line 726
    invoke-static {}, Lcom/mediatek/ims/internal/ImsXuiManager;->getInstance()Lcom/mediatek/ims/internal/ImsXuiManager;

    move-result-object v1

    .line 727
    .local v1, "xuiManager":Lcom/mediatek/ims/internal/ImsXuiManager;
    invoke-direct {p0, v1, p1}, Lcom/mediatek/ims/ImsService;->notifyRegistrationAssociatedUriChange(Lcom/mediatek/ims/internal/ImsXuiManager;I)V

    .line 729
    .end local v1    # "xuiManager":Lcom/mediatek/ims/internal/ImsXuiManager;
    :cond_2
    return-void

    .line 718
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onAddRegistrationListener(IILcom/android/ims/internal/IImsRegistrationListener;Z)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "serviceType"    # I
    .param p3, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;
    .param p4, "notifyOnly"    # Z

    .line 733
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAddRegistrationListener: phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " serviceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " listener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " notifyOnly= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    if-eqz p4, :cond_0

    const-string v1, "true"

    goto :goto_0

    :cond_0
    const-string v1, "false"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 733
    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 735
    if-nez p4, :cond_2

    .line 736
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 737
    .local v0, "listeners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/ims/internal/IImsRegistrationListener;>;"
    monitor-enter v0

    .line 738
    :try_start_0
    invoke-virtual {v0, p3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 739
    const-string v1, "listener already exist"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 741
    :cond_1
    invoke-virtual {v0, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 742
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "listener set size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 744
    :goto_1
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 747
    .end local v0    # "listeners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/ims/internal/IImsRegistrationListener;>;"
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsRegInfo:[I

    aget v0, v0, p1

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v1, :cond_3

    .line 748
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsRegInfo:[I

    aget v0, v0, p1

    invoke-direct {p0, p1, v0, v2}, Lcom/mediatek/ims/ImsService;->notifyRegistrationStateChange(IIZ)V

    .line 751
    :cond_3
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsRegInfo:[I

    aget v0, v0, p1

    if-nez v0, :cond_4

    .line 752
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsExtInfo:[I

    aget v0, v0, p1

    invoke-direct {p0, p1, v0, v2}, Lcom/mediatek/ims/ImsService;->notifyRegistrationCapabilityChange(IIZ)V

    .line 754
    invoke-static {}, Lcom/mediatek/ims/internal/ImsXuiManager;->getInstance()Lcom/mediatek/ims/internal/ImsXuiManager;

    move-result-object v0

    .line 755
    .local v0, "xuiManager":Lcom/mediatek/ims/internal/ImsXuiManager;
    invoke-direct {p0, v0, p1}, Lcom/mediatek/ims/ImsService;->notifyRegistrationAssociatedUriChange(Lcom/mediatek/ims/internal/ImsXuiManager;I)V

    .line 757
    .end local v0    # "xuiManager":Lcom/mediatek/ims/internal/ImsXuiManager;
    :cond_4
    return-void
.end method

.method protected onClose(I)V
    .locals 4
    .param p1, "serviceId"    # I

    .line 655
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 656
    move v1, p1

    .line 659
    .local v1, "phoneId":I
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mImsEcbm:[Lcom/mediatek/ims/ImsEcbmProxy;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 660
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mImsEcbm:[Lcom/mediatek/ims/ImsEcbmProxy;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/mediatek/ims/ImsEcbmProxy;->getImsEcbm()Lcom/android/ims/internal/IImsEcbm;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/ims/internal/IImsEcbm;->setListener(Lcom/android/ims/internal/IImsEcbmListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 664
    :cond_0
    goto :goto_0

    .line 666
    .end local v1    # "phoneId":I
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 662
    .restart local v1    # "phoneId":I
    :catch_0
    move-exception v2

    .line 666
    .end local v1    # "phoneId":I
    :goto_0
    :try_start_1
    monitor-exit v0

    .line 667
    return-void

    .line 666
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onCreateCallProfile(III)Landroid/telephony/ims/ImsCallProfile;
    .locals 1
    .param p1, "serviceId"    # I
    .param p2, "serviceType"    # I
    .param p3, "callType"    # I

    .line 761
    new-instance v0, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v0, p2, p3}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    return-object v0
.end method

.method public onCreateCallSession(ILandroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/aidl/IImsCallSessionListener;)Lcom/android/ims/internal/IImsCallSession;
    .locals 1
    .param p1, "serviceId"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p3, "listener"    # Landroid/telephony/ims/aidl/IImsCallSessionListener;

    .line 767
    invoke-virtual {p0, p1, p2, p3}, Lcom/mediatek/ims/ImsService;->onCreateCallSessionProxy(ILandroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/aidl/IImsCallSessionListener;)Lcom/mediatek/ims/ImsCallSessionProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    return-object v0
.end method

.method public onCreateCallSessionProxy(ILandroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/aidl/IImsCallSessionListener;)Lcom/mediatek/ims/ImsCallSessionProxy;
    .locals 12
    .param p1, "serviceId"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p3, "listener"    # Landroid/telephony/ims/aidl/IImsCallSessionListener;

    .line 773
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreateCallSessionProxy: serviceId ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " profile ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " listener ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 775
    const/4 v0, 0x0

    .line 776
    .local v0, "sessionListener":Landroid/telephony/ims/ImsCallSessionListener;
    if-eqz p3, :cond_0

    .line 777
    new-instance v1, Landroid/telephony/ims/ImsCallSessionListener;

    invoke-direct {v1, p3}, Landroid/telephony/ims/ImsCallSessionListener;-><init>(Landroid/telephony/ims/aidl/IImsCallSessionListener;)V

    move-object v0, v1

    .line 780
    :cond_0
    move v9, p1

    .line 781
    .local v9, "phoneId":I
    new-instance v10, Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v6, v1, v9

    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v7, v1, v9

    move-object v1, v10

    move-object v3, p2

    move-object v4, v0

    move-object v5, p0

    move v8, v9

    invoke-direct/range {v1 .. v8}, Lcom/mediatek/ims/ImsCallSessionProxy;-><init>(Landroid/content/Context;Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsCallSessionListener;Lcom/mediatek/ims/ImsService;Landroid/os/Handler;Lcom/mediatek/ims/ril/ImsCommandsInterface;I)V

    .line 784
    .local v10, "cs":Lcom/mediatek/ims/ImsCallSessionProxy;
    new-instance v11, Lcom/mediatek/ims/MtkImsCallSessionProxy;

    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v6, v1, v9

    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v7, v1, v9

    move-object v1, v11

    invoke-direct/range {v1 .. v8}, Lcom/mediatek/ims/MtkImsCallSessionProxy;-><init>(Landroid/content/Context;Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsCallSessionListener;Lcom/mediatek/ims/ImsService;Landroid/os/Handler;Lcom/mediatek/ims/ril/ImsCommandsInterface;I)V

    .line 787
    .local v1, "mtk_cs":Lcom/mediatek/ims/MtkImsCallSessionProxy;
    invoke-virtual {v1, v10}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->setAospCallSessionProxy(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    .line 788
    invoke-virtual {v10, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->setMtkCallSessionProxy(Lcom/mediatek/ims/MtkImsCallSessionProxy;)V

    .line 790
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreateCallSessionProxy: cs.getServiceImpl() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 792
    sget-object v2, Lcom/mediatek/ims/ImsService;->mPendingMtkImsCallSessionProxy:Ljava/util/Map;

    invoke-virtual {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 794
    return-object v10
.end method

.method public onCreateMtkCallSession(ILandroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/aidl/IImsCallSessionListener;Lcom/android/ims/internal/IImsCallSession;)Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p3, "listener"    # Landroid/telephony/ims/aidl/IImsCallSessionListener;
    .param p4, "aospCallSessionImpl"    # Lcom/android/ims/internal/IImsCallSession;

    .line 802
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mediatek/ims/ImsService;->onCreateMtkCallSessionProxy(ILandroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/aidl/IImsCallSessionListener;Lcom/android/ims/internal/IImsCallSession;)Lcom/mediatek/ims/MtkImsCallSessionProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->getServiceImpl()Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v0

    return-object v0
.end method

.method public onCreateMtkCallSessionProxy(ILandroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/aidl/IImsCallSessionListener;Lcom/android/ims/internal/IImsCallSession;)Lcom/mediatek/ims/MtkImsCallSessionProxy;
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p3, "listener"    # Landroid/telephony/ims/aidl/IImsCallSessionListener;
    .param p4, "aospCallSessionImpl"    # Lcom/android/ims/internal/IImsCallSession;

    .line 809
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreateMtkCallSessionProxy: aospCallSessionImpl = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 810
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreateMtkCallSessionProxy: containsKey = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mediatek/ims/ImsService;->mPendingMtkImsCallSessionProxy:Ljava/util/Map;

    invoke-interface {v1, p4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 812
    const/4 v0, 0x0

    .line 814
    .local v0, "mtk_cs":Lcom/mediatek/ims/MtkImsCallSessionProxy;
    sget-object v1, Lcom/mediatek/ims/ImsService;->mPendingMtkImsCallSessionProxy:Ljava/util/Map;

    invoke-interface {v1, p4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 816
    sget-object v1, Lcom/mediatek/ims/ImsService;->mPendingMtkImsCallSessionProxy:Ljava/util/Map;

    invoke-interface {v1, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/mediatek/ims/MtkImsCallSessionProxy;

    .line 817
    sget-object v1, Lcom/mediatek/ims/ImsService;->mPendingMtkImsCallSessionProxy:Ljava/util/Map;

    invoke-interface {v1, p4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    :cond_0
    return-object v0
.end method

.method public onGetConfigInterface(I)Lcom/android/ims/internal/IImsConfig;
    .locals 2
    .param p1, "phoneId"    # I

    .line 914
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMdAutoSetupIms()Z

    move-result v0

    if-nez v0, :cond_0

    .line 915
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsService;->bindAndRegisterWifiOffloadService()V

    goto :goto_0

    .line 917
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/ims/ImsService;->bindAndRegisterMWIService()V

    .line 920
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGetConfigInterface, use phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 922
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsConfigManager:Lcom/mediatek/ims/ImsConfigManager;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ImsConfigManager;->get(I)Lcom/android/ims/internal/IImsConfig;

    move-result-object v0

    return-object v0
.end method

.method protected onGetEcbmInterface(I)Lcom/android/ims/internal/IImsEcbm;
    .locals 5
    .param p1, "serviceId"    # I

    .line 959
    move v0, p1

    .line 961
    .local v0, "phoneId":I
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mImsEcbm:[Lcom/mediatek/ims/ImsEcbmProxy;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 962
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mImsEcbm:[Lcom/mediatek/ims/ImsEcbmProxy;

    new-instance v2, Lcom/mediatek/ims/ImsEcbmProxy;

    iget-object v3, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v4, v4, v0

    invoke-direct {v2, v3, v4, v0}, Lcom/mediatek/ims/ImsEcbmProxy;-><init>(Landroid/content/Context;Lcom/mediatek/ims/ril/ImsCommandsInterface;I)V

    aput-object v2, v1, v0

    .line 964
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mImsEcbm:[Lcom/mediatek/ims/ImsEcbmProxy;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/mediatek/ims/ImsEcbmProxy;->getImsEcbm()Lcom/android/ims/internal/IImsEcbm;

    move-result-object v1

    return-object v1
.end method

.method public onGetEcbmProxy(I)Landroid/telephony/ims/stub/ImsEcbmImplBase;
    .locals 5
    .param p1, "serviceId"    # I

    .line 971
    move v0, p1

    .line 973
    .local v0, "phoneId":I
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mImsEcbm:[Lcom/mediatek/ims/ImsEcbmProxy;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 974
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mImsEcbm:[Lcom/mediatek/ims/ImsEcbmProxy;

    new-instance v2, Lcom/mediatek/ims/ImsEcbmProxy;

    iget-object v3, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v4, v4, v0

    invoke-direct {v2, v3, v4, v0}, Lcom/mediatek/ims/ImsEcbmProxy;-><init>(Landroid/content/Context;Lcom/mediatek/ims/ril/ImsCommandsInterface;I)V

    aput-object v2, v1, v0

    .line 976
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mImsEcbm:[Lcom/mediatek/ims/ImsEcbmProxy;

    aget-object v1, v1, v0

    return-object v1
.end method

.method protected onGetMtkUtInterface(I)Lcom/mediatek/ims/internal/IMtkImsUt;
    .locals 3
    .param p1, "phoneId"    # I

    .line 895
    const/4 v0, 0x0

    .line 896
    .local v0, "inst":Lcom/mediatek/ims/internal/IMtkImsUt;
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMdAutoSetupIms()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 897
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p0}, Lcom/mediatek/ims/MtkImsUtImpl;->getInstance(Landroid/content/Context;ILcom/mediatek/ims/ImsService;)Lcom/mediatek/ims/MtkImsUtImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/ims/MtkImsUtImpl;->getInterface()Lcom/mediatek/ims/internal/IMtkImsUt;

    move-result-object v0

    goto :goto_0

    .line 899
    :cond_0
    invoke-static {}, Lcom/mediatek/ims/plugin/ExtensionFactory;->makeLegacyComponentFactory()Lcom/mediatek/ims/plugin/LegacyComponentFactory;

    move-result-object v1

    .line 900
    .local v1, "factory":Lcom/mediatek/ims/plugin/LegacyComponentFactory;
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2, p1, p0}, Lcom/mediatek/ims/plugin/LegacyComponentFactory;->makeMtkImsUt(Landroid/content/Context;ILcom/mediatek/ims/ImsService;)Lcom/mediatek/ims/feature/MtkImsUtImplBase;

    move-result-object v2

    .line 901
    .local v2, "utImpl":Lcom/mediatek/ims/feature/MtkImsUtImplBase;
    if-eqz v2, :cond_1

    .line 902
    invoke-virtual {v2}, Lcom/mediatek/ims/feature/MtkImsUtImplBase;->getInterface()Lcom/mediatek/ims/internal/IMtkImsUt;

    move-result-object v0

    .line 906
    .end local v1    # "factory":Lcom/mediatek/ims/plugin/LegacyComponentFactory;
    .end local v2    # "utImpl":Lcom/mediatek/ims/feature/MtkImsUtImplBase;
    :cond_1
    :goto_0
    return-object v0
.end method

.method protected onGetMultiEndpointInterface(I)Lcom/android/ims/internal/IImsMultiEndpoint;
    .locals 5
    .param p1, "serviceId"    # I

    .line 995
    move v0, p1

    .line 997
    .local v0, "phoneId":I
    const-string v1, "ImsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGetMultiEndpointInterface serviceId is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mMultiEndpointMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 999
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mMultiEndpointMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/internal/ImsMultiEndpointProxy;

    invoke-virtual {v1}, Lcom/mediatek/ims/internal/ImsMultiEndpointProxy;->getIImsMultiEndpoint()Lcom/android/ims/internal/IImsMultiEndpoint;

    move-result-object v1

    return-object v1

    .line 1001
    :cond_0
    new-instance v1, Lcom/mediatek/ims/internal/ImsMultiEndpointProxy;

    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/mediatek/ims/internal/ImsMultiEndpointProxy;-><init>(Landroid/content/Context;)V

    .line 1002
    .local v1, "instance":Lcom/mediatek/ims/internal/ImsMultiEndpointProxy;
    const-string v2, "ImsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onGetMultiEndpointInterface instance is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mMultiEndpointMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1004
    invoke-virtual {v1}, Lcom/mediatek/ims/internal/ImsMultiEndpointProxy;->getIImsMultiEndpoint()Lcom/android/ims/internal/IImsMultiEndpoint;

    move-result-object v2

    return-object v2
.end method

.method public onGetMultiEndpointProxy(I)Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;
    .locals 5
    .param p1, "serviceId"    # I

    .line 1008
    move v0, p1

    .line 1010
    .local v0, "phoneId":I
    const-string v1, "ImsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGetMultiEndpointProxy serviceId is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mMultiEndpointMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1012
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mMultiEndpointMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;

    return-object v1

    .line 1014
    :cond_0
    new-instance v1, Lcom/mediatek/ims/internal/ImsMultiEndpointProxy;

    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/mediatek/ims/internal/ImsMultiEndpointProxy;-><init>(Landroid/content/Context;)V

    .line 1015
    .local v1, "instance":Lcom/mediatek/ims/internal/ImsMultiEndpointProxy;
    const-string v2, "ImsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onGetMultiEndpointProxy instance is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mMultiEndpointMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1017
    return-object v1
.end method

.method protected onGetPendingCallSession(ILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;
    .locals 4
    .param p1, "serviceId"    # I
    .param p2, "callId"    # Ljava/lang/String;

    .line 851
    move v0, p1

    .line 853
    .local v0, "phoneId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetPendingCallSession() : serviceId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", callId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 856
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mPendingMT:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 857
    return-object v2

    .line 860
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mPendingMT:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v1

    .line 863
    .local v1, "pendingMTsession":Lcom/android/ims/internal/IImsCallSession;
    :try_start_0
    invoke-interface {v1}, Lcom/android/ims/internal/IImsCallSession;->getCallId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 864
    iput-object v2, p0, Lcom/mediatek/ims/ImsService;->mPendingMT:Lcom/mediatek/ims/ImsCallSessionProxy;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 865
    return-object v1

    .line 869
    :cond_1
    goto :goto_0

    .line 867
    :catch_0
    move-exception v3

    .line 871
    :goto_0
    return-object v2
.end method

.method onGetPendingMtkCallSession(Ljava/lang/String;)Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .line 2357
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mMtkPendingMT:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2358
    return-object v1

    .line 2361
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mMtkPendingMT:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    invoke-virtual {v0}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->getServiceImpl()Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v0

    .line 2364
    .local v0, "pendingMTsession":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    :try_start_0
    invoke-interface {v0}, Lcom/mediatek/ims/internal/IMtkImsCallSession;->getCallId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2365
    iput-object v1, p0, Lcom/mediatek/ims/ImsService;->mMtkPendingMT:Lcom/mediatek/ims/MtkImsCallSessionProxy;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2366
    return-object v0

    .line 2370
    :cond_1
    goto :goto_0

    .line 2368
    :catch_0
    move-exception v2

    .line 2372
    :goto_0
    return-object v1
.end method

.method protected onGetUtInterface(I)Lcom/android/ims/internal/IImsUt;
    .locals 3
    .param p1, "phoneId"    # I

    .line 879
    const/4 v0, 0x0

    .line 880
    .local v0, "inst":Lcom/android/ims/internal/IImsUt;
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMdAutoSetupIms()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 881
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p0}, Lcom/mediatek/ims/ImsUtImpl;->getInstance(Landroid/content/Context;ILcom/mediatek/ims/ImsService;)Lcom/mediatek/ims/ImsUtImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/ims/ImsUtImpl;->getInterface()Lcom/android/ims/internal/IImsUt;

    move-result-object v0

    goto :goto_0

    .line 883
    :cond_0
    invoke-static {}, Lcom/mediatek/ims/plugin/ExtensionFactory;->makeLegacyComponentFactory()Lcom/mediatek/ims/plugin/LegacyComponentFactory;

    move-result-object v1

    .line 884
    .local v1, "factory":Lcom/mediatek/ims/plugin/LegacyComponentFactory;
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2, p1, p0}, Lcom/mediatek/ims/plugin/LegacyComponentFactory;->makeImsUt(Landroid/content/Context;ILcom/mediatek/ims/ImsService;)Landroid/telephony/ims/stub/ImsUtImplBase;

    move-result-object v2

    .line 885
    .local v2, "utImpl":Landroid/telephony/ims/stub/ImsUtImplBase;
    if-eqz v2, :cond_1

    .line 886
    invoke-virtual {v2}, Landroid/telephony/ims/stub/ImsUtImplBase;->getInterface()Lcom/android/ims/internal/IImsUt;

    move-result-object v0

    .line 890
    .end local v1    # "factory":Lcom/mediatek/ims/plugin/LegacyComponentFactory;
    .end local v2    # "utImpl":Landroid/telephony/ims/stub/ImsUtImplBase;
    :cond_1
    :goto_0
    return-object v0
.end method

.method protected onHangupAllCall(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 1051
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->hangupAllCall(Landroid/os/Message;)V

    .line 1052
    return-void
.end method

.method protected onIsConnected(III)Z
    .locals 2
    .param p1, "serviceId"    # I
    .param p2, "serviceType"    # I
    .param p3, "callType"    # I

    .line 677
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onIsConnected: serviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", serviceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", callType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 679
    move v0, p1

    .line 680
    .local v0, "phoneId":I
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mImsRegInfo:[I

    aget v1, v1, v0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected onIsOpened(I)Z
    .locals 3
    .param p1, "serviceId"    # I

    .line 690
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onIsOpened: serviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 691
    move v0, p1

    .line 692
    .local v0, "phoneId":I
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mListener:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    .line 694
    .local v1, "listeners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/ims/internal/IImsRegistrationListener;>;"
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method protected onOpen(IILandroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "serviceClass"    # I
    .param p3, "incomingCallIntent"    # Landroid/app/PendingIntent;
    .param p4, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .line 645
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onOpen: phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " serviceClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " listener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 647
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/ImsService;->mapPhoneIdToServiceId(I)I

    move-result v0

    .line 648
    .local v0, "serviceId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOpen: serviceId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->englog(Ljava/lang/String;)V

    .line 649
    return v0
.end method

.method protected onRunGbaAuthentication(Ljava/lang/String;[BZII)Lcom/mediatek/gba/NafSessionKey;
    .locals 9
    .param p1, "nafFqdn"    # Ljava/lang/String;
    .param p2, "nafSecureProtocolId"    # [B
    .param p3, "forceRun"    # Z
    .param p4, "netId"    # I
    .param p5, "phoneId"    # I

    .line 829
    new-instance v0, Lcom/mediatek/ims/ImsService$NafSessionKeyResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/ims/ImsService$NafSessionKeyResult;-><init>(Lcom/mediatek/ims/ImsService;Lcom/mediatek/ims/ImsService$1;)V

    .line 830
    .local v0, "result":Lcom/mediatek/ims/ImsService$NafSessionKeyResult;
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v1, v1, p5

    const/16 v2, 0x17

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 832
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, v0, Lcom/mediatek/ims/ImsService$NafSessionKeyResult;->lockObj:Ljava/lang/Object;

    monitor-enter v2

    .line 833
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v3, v3, p5

    .line 834
    invoke-static {p2}, Lcom/mediatek/ims/ImsCommonUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object v5

    .line 833
    move-object v4, p1

    move v6, p3

    move v7, p4

    move-object v8, v1

    invoke-interface/range {v3 .. v8}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->runGbaAuthentication(Ljava/lang/String;Ljava/lang/String;ZILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 836
    :try_start_1
    iget-object v3, v0, Lcom/mediatek/ims/ImsService$NafSessionKeyResult;->lockObj:Ljava/lang/Object;

    const-wide/16 v4, 0x2710

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 840
    goto :goto_0

    .line 837
    :catch_0
    move-exception v3

    .line 838
    .local v3, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 839
    const/4 v4, 0x2

    iput v4, v0, Lcom/mediatek/ims/ImsService$NafSessionKeyResult;->cmdResult:I

    .line 841
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :goto_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 842
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRunGbaAuthentication complete, nafSessionKey:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/mediatek/ims/ImsService$NafSessionKeyResult;->nafSessionKey:Lcom/mediatek/gba/NafSessionKey;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", cmdResult:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/mediatek/ims/ImsService$NafSessionKeyResult;->cmdResult:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 845
    iget-object v2, v0, Lcom/mediatek/ims/ImsService$NafSessionKeyResult;->nafSessionKey:Lcom/mediatek/gba/NafSessionKey;

    return-object v2

    .line 841
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method protected onSetCallIndication(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "callNum"    # Ljava/lang/String;
    .param p4, "seqNum"    # I
    .param p5, "toNumber"    # Ljava/lang/String;
    .param p6, "isAllow"    # Z

    .line 2314
    if-eqz p6, :cond_1

    .line 2315
    new-instance v0, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v0}, Landroid/telephony/ims/ImsCallProfile;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 2316
    if-eqz p3, :cond_0

    const-string v0, ""

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCallIndication new call profile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 2318
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v1, "oi"

    invoke-virtual {v0, v1, p3}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 2319
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v1, "oir"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 2324
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    .line 2325
    invoke-static {v0}, Lcom/mediatek/ims/ext/OpImsServiceCustomizationUtils;->getOpFactory(Landroid/content/Context;)Lcom/mediatek/ims/ext/OpImsServiceCustomizationFactoryBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/ext/OpImsServiceCustomizationFactoryBase;->makeDigitsUtil()Lcom/mediatek/ims/ext/DigitsUtil;

    move-result-object v0

    .line 2326
    .local v0, "digitsUtil":Lcom/mediatek/ims/ext/DigitsUtil;
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-interface {v0, p5, v1}, Lcom/mediatek/ims/ext/DigitsUtil;->putMtToNumber(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V

    .line 2341
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v1, v1, p1

    const/16 v2, 0x1b

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2342
    .local v1, "msg":Landroid/os/Message;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2343
    .local v2, "b":Landroid/os/Bundle;
    const-string v3, "callId"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2344
    const-string v3, "phoneId"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2345
    const-string v3, "seqNum"

    invoke-virtual {v2, v3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2346
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2347
    iget-object v3, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v3, v3, p1

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2349
    .end local v0    # "digitsUtil":Lcom/mediatek/ims/ext/DigitsUtil;
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "b":Landroid/os/Bundle;
    goto :goto_0

    .line 2350
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v0, v0, p1

    const/4 v1, 0x1

    .line 2351
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 2350
    invoke-interface {v0, v1, v2, p4}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setCallIndication(III)V

    .line 2353
    :goto_0
    return-void
.end method

.method protected onSetRegistrationListener(ILcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 2
    .param p1, "serviceId"    # I
    .param p2, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .line 702
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSetRegistrationListener: serviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", listener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 703
    return-void
.end method

.method protected onSetUiTTYMode(IILandroid/os/Message;)V
    .locals 2
    .param p1, "serviceId"    # I
    .param p2, "uiTtyMode"    # I
    .param p3, "onComplete"    # Landroid/os/Message;

    .line 984
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSetUiTTYMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 985
    move v0, p1

    .line 987
    .local v0, "phoneId":I
    return-void
.end method

.method protected onTurnOffIms(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 951
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "turnOffIms, phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 952
    return-void
.end method

.method protected onTurnOnIms(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 937
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "turnOnIms phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 938
    return-void
.end method

.method protected onUpdateImsSate(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 1448
    const-string v0, "request onUpdateImsSate for ImsManager add local registrant"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1449
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsRegInfo:[I

    aget v0, v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 1450
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsRegInfo:[I

    aget v0, v0, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/mediatek/ims/ImsService;->notifyRegistrationStateChange(IIZ)V

    .line 1453
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsRegInfo:[I

    aget v0, v0, p1

    if-nez v0, :cond_1

    .line 1454
    invoke-static {}, Lcom/mediatek/ims/internal/ImsXuiManager;->getInstance()Lcom/mediatek/ims/internal/ImsXuiManager;

    move-result-object v0

    .line 1455
    .local v0, "xuiManager":Lcom/mediatek/ims/internal/ImsXuiManager;
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mImsExtInfo:[I

    aget v2, v2, p1

    invoke-direct {p0, p1, v2, v1}, Lcom/mediatek/ims/ImsService;->notifyRegistrationCapabilityChange(IIZ)V

    .line 1456
    invoke-direct {p0, v0, p1}, Lcom/mediatek/ims/ImsService;->notifyRegistrationAssociatedUriChange(Lcom/mediatek/ims/internal/ImsXuiManager;I)V

    .line 1458
    .end local v0    # "xuiManager":Lcom/mediatek/ims/internal/ImsXuiManager;
    :cond_1
    return-void
.end method

.method public sendSms(IIILjava/lang/String;Ljava/lang/String;Z[B)V
    .locals 13
    .param p1, "phoneId"    # I
    .param p2, "token"    # I
    .param p3, "messageRef"    # I
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "smsc"    # Ljava/lang/String;
    .param p6, "isRetry"    # Z
    .param p7, "pdu"    # [B

    move-object v0, p0

    move v1, p1

    move v10, p2

    .line 2503
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendSms, token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", messageRef "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, p3

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 2504
    iget-object v2, v0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v2, v2, v1

    const/16 v3, 0x1c

    invoke-virtual {v2, v3, v1, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v12

    .line 2505
    .local v12, "response":Landroid/os/Message;
    iget-object v2, v0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v2, v2, v1

    move v3, v10

    move v4, v11

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object v9, v12

    invoke-interface/range {v2 .. v9}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->sendSms(IILjava/lang/String;Ljava/lang/String;Z[BLandroid/os/Message;)V

    .line 2506
    return-void
.end method

.method public setImsRegistration(ILcom/mediatek/ims/MtkImsRegistrationImpl;)V
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "imsRegImpl"    # Lcom/mediatek/ims/MtkImsRegistrationImpl;

    .line 2708
    sget-object v0, Lcom/mediatek/ims/ImsService;->sMtkImsRegImpl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2709
    if-eqz p2, :cond_1

    .line 2710
    sget-object v0, Lcom/mediatek/ims/ImsService;->sMtkImsRegImpl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2711
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsRegInfo:[I

    aget v0, v0, p1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 2712
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsRegInfo:[I

    aget v0, v0, p1

    if-nez v0, :cond_0

    .line 2714
    :try_start_0
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsService;->getRadioTech(I)I

    move-result v0

    .line 2715
    .local v0, "radioTech":I
    const/4 v1, 0x2

    .line 2717
    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->convertImsRegistrationTech(I)I

    move-result v2

    const/4 v3, 0x0

    .line 2715
    invoke-direct {p0, p1, v1, v2, v3}, Lcom/mediatek/ims/ImsService;->updateImsRegstration(IIILandroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "radioTech":I
    goto :goto_0

    .line 2718
    :catch_0
    move-exception v0

    .line 2719
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to get radio tech "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 2720
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 2721
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsRegInfo:[I

    aget v0, v0, p1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 2722
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsService;->createImsReasonInfo(I)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v0

    .line 2723
    .local v0, "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    const/4 v2, -0x1

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/mediatek/ims/ImsService;->updateImsRegstration(IIILandroid/telephony/ims/ImsReasonInfo;)V

    .line 2729
    .end local v0    # "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    :cond_1
    :goto_1
    return-void
.end method

.method public setMmTelFeatureCallback(ILcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "c"    # Lcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;

    .line 2646
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mMmTelFeatureCallback:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 2647
    if-eqz p2, :cond_0

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2648
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mMmTelFeatureCallback:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2649
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    invoke-interface {p2, v0}, Lcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;->notifyContextChanged(Landroid/content/Context;)V

    .line 2651
    :cond_0
    return-void
.end method

.method public updateRadioState(II)V
    .locals 5
    .param p1, "radioState"    # I
    .param p2, "phoneId"    # I

    .line 1088
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateRadioState, phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " radioState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1089
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMdAutoSetupIms()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1090
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v2, v1

    nop

    :cond_0
    move v0, v2

    .line 1093
    .local v0, "isAirPlaneMode":Z
    if-eqz v0, :cond_1

    .line 1094
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateRadioState() : current is airplane mode, slot::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->logw(Ljava/lang/String;)V

    .line 1095
    return-void

    .line 1098
    :cond_1
    sget-object v2, Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;

    invoke-virtual {v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;->ordinal()I

    move-result v2

    if-eq v2, p1, :cond_5

    .line 1100
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v2, v2, p2

    const/16 v3, 0x12

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateRadioState() : remove dup EVENT_RADIO_OFF of slot:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsService;->logw(Ljava/lang/String;)V

    .line 1102
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v2, v2, p2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1104
    :cond_2
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v2, v2, p2

    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateRadioState() : remove dup EVENT_RADIO_ON of slot:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsService;->logw(Ljava/lang/String;)V

    .line 1107
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v2, v2, p2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1111
    :cond_3
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mImsManagerOemPlugin:Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    if-nez v2, :cond_4

    .line 1112
    invoke-static {}, Lcom/mediatek/ims/plugin/ExtensionFactory;->makeOemPluginFactory()Lcom/mediatek/ims/plugin/OemPluginFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    .line 1113
    invoke-interface {v2, v3}, Lcom/mediatek/ims/plugin/OemPluginFactory;->makeImsManagerPlugin(Landroid/content/Context;)Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ims/ImsService;->mImsManagerOemPlugin:Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    .line 1116
    :cond_4
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mImsManagerOemPlugin:Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    iget-object v3, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    invoke-interface {v2, v3, p2, v1}, Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;->updateImsServiceConfig(Landroid/content/Context;IZ)V

    .line 1118
    .end local v0    # "isAirPlaneMode":Z
    :cond_5
    goto :goto_1

    .line 1119
    :cond_6
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsService;->bindAndRegisterWifiOffloadService()V

    .line 1121
    sget-object v0, Lcom/mediatek/ims/ImsService;->sWifiOffloadService:Lcom/mediatek/wfo/IWifiOffloadService;

    if-eqz v0, :cond_7

    .line 1123
    :try_start_0
    sget-object v0, Lcom/mediatek/ims/ImsService;->sWifiOffloadService:Lcom/mediatek/wfo/IWifiOffloadService;

    invoke-interface {v0, p2, p1}, Lcom/mediatek/wfo/IWifiOffloadService;->updateRadioState(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1124
    :catch_0
    move-exception v0

    .line 1125
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "can\'t update radio state"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 1126
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 1128
    :cond_7
    const-string v0, "can\'t get WifiOffloadService"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 1132
    :goto_1
    return-void
.end method
