.class public Lcom/mediatek/ims/internal/ImsVTProvider;
.super Landroid/telephony/ims/ImsVideoCallProvider;
.source "ImsVTProvider.java"

# interfaces
.implements Lcom/mediatek/ims/internal/VTSource$EventCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/internal/ImsVTProvider$ConnectionEx;,
        Lcom/mediatek/ims/internal/ImsVTProvider$VideoProviderStateListener;
    }
.end annotation


# static fields
.field public static final MODE_PAUSE_BY_HOLD:I = 0x1

.field public static final MODE_PAUSE_BY_TURNOFFCAM:I = 0x2

.field protected static final MSG_RECEIVE_CALL_SESSION_EVENT:I = 0x2c2

.field protected static final MSG_REQUEST_CALL_DATA_USAGE:I = 0xa

.field protected static final MSG_REQUEST_CAMERA_CAPABILITIES:I = 0x9

.field protected static final MSG_RESET_WRAPPER:I = 0x2c0

.field protected static final MSG_SEND_SESSION_MODIFY_REQUEST:I = 0x7

.field protected static final MSG_SEND_SESSION_MODIFY_RESPONSE:I = 0x8

.field protected static final MSG_SET_CALLBACK:I = 0x1

.field protected static final MSG_SET_CAMERA:I = 0x2

.field protected static final MSG_SET_DEVICE_ORIENTATION:I = 0x5

.field protected static final MSG_SET_DISPLAY_SURFACE:I = 0x4

.field protected static final MSG_SET_PAUSE_IMAGE:I = 0xb

.field protected static final MSG_SET_PREVIEW_SURFACE:I = 0x3

.field protected static final MSG_SET_UI_MODE:I = 0x2bd

.field protected static final MSG_SET_ZOOM:I = 0x6

.field protected static final MSG_SWITCH_FEATURE:I = 0x2be

.field protected static final MSG_SWITCH_ROAMING:I = 0x2bf

.field protected static final MSG_UPDATE_PROFILE:I = 0x2c1

.field public static final MTK_VILTE_ROTATE_DELAY:Ljava/lang/String; = "persist.vendor.vt.rotate_delay"

.field public static final POSTEVENT_IGNORE_ID:I = -0xa

.field public static final REPLACE_PICTURE_PATH:Landroid/net/Uri;

.field public static final SESSION_EVENT_BAD_DATA_BITRATE:I = 0xfa8

.field public static final SESSION_EVENT_CALL_ABNORMAL_END:I = 0x3f1

.field public static final SESSION_EVENT_CALL_END:I = 0x3f0

.field public static final SESSION_EVENT_CAM_CAP_CHANGED:I = 0xfa7

.field public static final SESSION_EVENT_DATA_BITRATE_RECOVER:I = 0xfa9

.field public static final SESSION_EVENT_DATA_PATH_PAUSE:I = 0xfab

.field public static final SESSION_EVENT_DATA_PATH_RESUME:I = 0xfac

.field public static final SESSION_EVENT_DATA_USAGE_CHANGED:I = 0xfa6

.field public static final SESSION_EVENT_DEFAULT_LOCAL_SIZE:I = 0xfad

.field public static final SESSION_EVENT_ERROR_CAMERA_CRASHED:I = 0x1f43

.field public static final SESSION_EVENT_ERROR_CAMERA_SET_IGNORED:I = 0x1f46

.field public static final SESSION_EVENT_ERROR_CODEC:I = 0x1f44

.field public static final SESSION_EVENT_ERROR_REC:I = 0x1f45

.field public static final SESSION_EVENT_ERROR_SERVER_DIED:I = 0x1f42

.field public static final SESSION_EVENT_ERROR_SERVICE:I = 0x1f41

.field public static final SESSION_EVENT_GET_CAP:I = 0xfae

.field public static final SESSION_EVENT_GET_CAP_WITH_SIM:I = 0xfb3

.field public static final SESSION_EVENT_GET_SENSOR_INFO:I = 0xfb2

.field public static final SESSION_EVENT_HANDLE_CALL_SESSION_EVT:I = 0xfa3

.field public static final SESSION_EVENT_LOCAL_BUFFER:I = 0xfaf

.field public static final SESSION_EVENT_LOCAL_BW_READY_IND:I = 0x3f5

.field public static final SESSION_EVENT_LOCAL_SIZE_CHANGED:I = 0xfa5

.field public static final SESSION_EVENT_PACKET_LOSS_RATE:I = 0xfb4

.field public static final SESSION_EVENT_PACKET_LOSS_RATE_HIGH:I = 0xfb5

.field public static final SESSION_EVENT_PACKET_LOSS_RATE_LOW:I = 0xfb7

.field public static final SESSION_EVENT_PACKET_LOSS_RATE_MEDIUM:I = 0xfb6

.field public static final SESSION_EVENT_PEER_CAMERA_CLOSE:I = 0x3f4

.field public static final SESSION_EVENT_PEER_CAMERA_OPEN:I = 0x3f3

.field public static final SESSION_EVENT_PEER_SIZE_CHANGED:I = 0xfa4

.field public static final SESSION_EVENT_RECEIVE_FIRSTFRAME:I = 0x3e9

.field public static final SESSION_EVENT_RECORDER_EVENT_INFO_COMPLETE:I = 0x3ef

.field public static final SESSION_EVENT_RECORDER_EVENT_INFO_NO_I_FRAME:I = 0x3ee

.field public static final SESSION_EVENT_RECORDER_EVENT_INFO_REACH_MAX_DURATION:I = 0x3ec

.field public static final SESSION_EVENT_RECORDER_EVENT_INFO_REACH_MAX_FILESIZE:I = 0x3ed

.field public static final SESSION_EVENT_RECORDER_EVENT_INFO_UNKNOWN:I = 0x3eb

.field public static final SESSION_EVENT_RECV_CANCEL_SESSION_IND:I = 0xfaa

.field public static final SESSION_EVENT_RECV_SESSION_CONFIG_REQ:I = 0xfa1

.field public static final SESSION_EVENT_RECV_SESSION_CONFIG_RSP:I = 0xfa2

.field public static final SESSION_EVENT_RESTART_CAMERA:I = 0xfb1

.field public static final SESSION_EVENT_SNAPSHOT_DONE:I = 0x3ea

.field public static final SESSION_EVENT_START_COUNTER:I = 0x3f2

.field public static final SESSION_EVENT_UPLINK_STATE_CHANGE:I = 0xfb0

.field public static final SESSION_EVENT_WARNING_SERVICE_NOT_READY:I = 0x2329

.field public static final SESSION_MODIFICATION_OVERLAP_ACTION_APP:I = 0x0

.field public static final SESSION_MODIFICATION_OVERLAP_ACTION_DATA_OFF:I = 0x1

.field public static final SESSION_MODIFICATION_OVERLAP_ACTION_DO_IMMEDIATELY:I = 0x4

.field public static final SESSION_MODIFICATION_OVERLAP_ACTION_MA_CRASH:I = 0x3

.field public static final SESSION_MODIFICATION_OVERLAP_ACTION_REJECT:I = 0x1

.field public static final SESSION_MODIFICATION_OVERLAP_ACTION_REJECT_PREVIOUS:I = 0x2

.field public static final SESSION_MODIFICATION_OVERLAP_ACTION_ROAMINGG:I = 0x2

.field public static final SESSION_MODIFICATION_OVERLAP_ACTION_SKIP:I = 0x3

.field public static final SESSION_MODIFICATION_OVERLAP_ACTION_WAIT:I = 0x0

.field public static final SESSION_MODIFY_CANCELED:I = 0xb

.field public static final SESSION_MODIFY_CANCEL_FAILED_BW:I = 0x7

.field public static final SESSION_MODIFY_CANCEL_FAILED_DISABLE:I = 0x3

.field public static final SESSION_MODIFY_CANCEL_FAILED_DOWNGRADE:I = 0x1

.field public static final SESSION_MODIFY_CANCEL_FAILED_INTERNAL:I = 0x5

.field public static final SESSION_MODIFY_CANCEL_FAILED_LOCAL:I = 0x6

.field public static final SESSION_MODIFY_CANCEL_FAILED_NORMAL:I = 0x2

.field public static final SESSION_MODIFY_CANCEL_FAILED_REMOTE:I = 0x4

.field public static final SESSION_MODIFY_CANCEL_FAILED_TIMEOUT:I = 0x8

.field public static final SESSION_MODIFY_CANCEL_OK:I = 0x0

.field public static final SESSION_MODIFY_INTERNALERROR:I = 0x2

.field public static final SESSION_MODIFY_INVALIDPARA:I = 0x8

.field public static final SESSION_MODIFY_INVIDEOACTION:I = 0xc

.field public static final SESSION_MODIFY_ISHOLD:I = 0x6

.field public static final SESSION_MODIFY_ISREINVITE:I = 0xd

.field public static final SESSION_MODIFY_LOCALREL:I = 0x5

.field public static final SESSION_MODIFY_NOACTIVESTATE:I = 0x4

.field public static final SESSION_MODIFY_NONEED:I = 0x7

.field public static final SESSION_MODIFY_OK:I = 0x0

.field public static final SESSION_MODIFY_REJECTBYREMOTE:I = 0xa

.field public static final SESSION_MODIFY_REQTIMEOUT:I = 0x9

.field public static final SESSION_MODIFY_RESULT_BW_MODIFYFAILED:I = 0x3

.field public static final SESSION_MODIFY_WRONGVIDEODIR:I = 0x1

.field static final TAG:Ljava/lang/String; = "ImsVT"

.field public static final UPLINK_STATE_PAUSE_RECORDING:I = 0x2

.field public static final UPLINK_STATE_RESUME_RECORDING:I = 0x3

.field public static final UPLINK_STATE_START_RECORDING:I = 0x1

.field public static final UPLINK_STATE_STOP_RECORDING:I = 0x0

.field public static final UPLINK_STATE_STOP_RECORDING_PREVIEW:I = 0x4

.field public static final VTP_STATE_DATA_OFF:I = 0x1

.field public static final VTP_STATE_MA_CRASH:I = 0x4

.field public static final VTP_STATE_NORMAL:I = 0x0

.field public static final VTP_STATE_ROAMING:I = 0x2

.field public static final VT_PROVIDER_INVALIDE_ID:I = -0x2710

.field protected static mDefaultId:I

.field public static mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;


# instance fields
.field protected mCameraId:Ljava/lang/String;

.field protected mCurrentProfile:Landroid/telecom/VideoProfile;

.field public mDummySource:Lcom/mediatek/ims/internal/VTDummySource;

.field protected mDuringSessionRemoteRequestOperation:Z

.field protected mDuringSessionRequestOperation:Z

.field public mHasRequestCamCap:Z

.field protected mId:I

.field public mInitComplete:Z

.field protected mIsAudioCall:Z

.field protected mIsDataOff:Z

.field private mIsDestroying:Z

.field protected mIsDuringResetMode:Z

.field protected mIsMaCrashed:Z

.field protected mIsRoaming:Z

.field protected mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

.field protected final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/mediatek/ims/internal/ImsVTProvider$VideoProviderStateListener;",
            ">;"
        }
    .end annotation
.end field

.field public mMode:I

.field protected mOrientation:I

.field protected mOrientationRunnable:Ljava/lang/Runnable;

.field public mPauseCount:I

.field protected mPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

.field protected final mProviderHandler:Landroid/os/Handler;

.field protected mProviderHandlerThread:Landroid/os/HandlerThread;

.field protected mSessionOperationFlagLock:Ljava/lang/Object;

.field protected mSimId:I

.field public mSource:Lcom/mediatek/ims/internal/VTSource;

.field protected mState:I

.field protected mUplinkState:I

.field public mUsager:Lcom/mediatek/ims/internal/ImsVTUsageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 95
    invoke-static {}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->isVideoCallOnByPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    const-string v0, "mtk_vt_wrapper"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 244
    :cond_0
    const-string v0, "content://PATH"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->REPLACE_PICTURE_PATH:Landroid/net/Uri;

    .line 276
    const/16 v0, -0x2710

    sput v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDefaultId:I

    .line 279
    invoke-static {}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->getInstance()Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    move-result-object v0

    sput-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 343
    invoke-direct {p0}, Landroid/telephony/ims/ImsVideoCallProvider;-><init>()V

    .line 273
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    .line 274
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSimId:I

    .line 275
    iput v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    .line 277
    iput-boolean v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mInitComplete:Z

    .line 285
    iput-boolean v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDuringSessionRequestOperation:Z

    .line 286
    iput-boolean v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDuringSessionRemoteRequestOperation:Z

    .line 287
    iput-boolean v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsDuringResetMode:Z

    .line 288
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSessionOperationFlagLock:Ljava/lang/Object;

    .line 292
    iput-boolean v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsMaCrashed:Z

    .line 295
    iput-boolean v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsRoaming:Z

    .line 298
    iput-boolean v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsDataOff:Z

    .line 301
    iput-boolean v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsAudioCall:Z

    .line 304
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    .line 305
    new-instance v3, Lcom/mediatek/ims/internal/VTDummySource;

    invoke-direct {v3}, Lcom/mediatek/ims/internal/VTDummySource;-><init>()V

    iput-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDummySource:Lcom/mediatek/ims/internal/VTDummySource;

    .line 306
    iput-object v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mCameraId:Ljava/lang/String;

    .line 307
    iput-boolean v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mHasRequestCamCap:Z

    .line 310
    iput v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mPauseCount:I

    .line 311
    iput v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mUplinkState:I

    .line 312
    new-instance v3, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    const/16 v4, 0x140

    const/16 v5, 0xf0

    invoke-direct {v3, v4, v5}, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;-><init>(II)V

    iput-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    .line 317
    iput-object v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mCurrentProfile:Landroid/telecom/VideoProfile;

    .line 320
    iput-boolean v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsDestroying:Z

    .line 323
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v4, 0x8

    const v5, 0x3f666666    # 0.9f

    invoke-direct {v3, v4, v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v3}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mListeners:Ljava/util/Set;

    .line 339
    iput v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mOrientation:I

    .line 340
    iput-object v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mOrientationRunnable:Ljava/lang/Runnable;

    .line 344
    const-string v0, "ImsVT"

    const-string v2, "New ImsVTProvider without id"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const/16 v0, -0x2710

    iput v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    .line 346
    iput-boolean v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mInitComplete:Z

    .line 348
    iput v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    .line 350
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    iget-object v0, v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/ims/ext/OpImsServiceCustomizationUtils;->getOpFactory(Landroid/content/Context;)Lcom/mediatek/ims/ext/OpImsServiceCustomizationFactoryBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/ext/OpImsServiceCustomizationFactoryBase;->makeImsVTUsageManager()Lcom/mediatek/ims/internal/ImsVTUsageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mUsager:Lcom/mediatek/ims/internal/ImsVTUsageManager;

    .line 352
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ProviderHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandlerThread:Landroid/os/HandlerThread;

    .line 353
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 355
    new-instance v0, Lcom/mediatek/ims/internal/ImsVTProvider$1;

    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mediatek/ims/internal/ImsVTProvider$1;-><init>(Lcom/mediatek/ims/internal/ImsVTProvider;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    .line 457
    new-instance v0, Lcom/mediatek/ims/internal/ImsVTProvider$2;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/internal/ImsVTProvider$2;-><init>(Lcom/mediatek/ims/internal/ImsVTProvider;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mOrientationRunnable:Ljava/lang/Runnable;

    .line 465
    return-void
.end method

.method public static native nFinalization(I)I
.end method

.method public static native nInitRefVTP()I
.end method

.method public static native nInitialization(II)I
.end method

.method public static native nRequestPeerConfig(ILjava/lang/String;)I
.end method

.method public static native nResponseLocalConfig(ILjava/lang/String;)I
.end method

.method public static native nSetCamera(II)I
.end method

.method public static native nSetCameraParameters(I[Lcom/mediatek/ims/internal/VTSource$Resolution;)I
.end method

.method public static native nSetCameraParametersOnly([Lcom/mediatek/ims/internal/VTSource$Resolution;)I
.end method

.method public static native nSetCameraParametersWithSim(II[Lcom/mediatek/ims/internal/VTSource$Resolution;)I
.end method

.method public static native nSetDeviceOrientation(II)I
.end method

.method public static native nSetDisplaySurface(ILandroid/view/Surface;)I
.end method

.method public static native nSetPreviewSurface(ILandroid/view/Surface;)I
.end method

.method public static native nSetUIMode(II)I
.end method

.method public static native nSnapshot(IILjava/lang/String;)I
.end method

.method public static native nStartRecording(IILjava/lang/String;J)I
.end method

.method public static native nStopRecording(I)I
.end method

.method public static native nSwitchFeature(III)I
.end method

.method public static postEventFromNative(IIIIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 16
    .param p0, "msg"    # I
    .param p1, "id"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I
    .param p5, "obj1"    # Ljava/lang/Object;
    .param p6, "obj2"    # Ljava/lang/Object;
    .param p7, "obj3"    # Ljava/lang/Object;

    move/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    .line 1784
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->recordGet(I)Lcom/mediatek/ims/internal/ImsVTProvider;

    move-result-object v5

    .line 1786
    .local v5, "vp":Lcom/mediatek/ims/internal/ImsVTProvider;
    if-nez v5, :cond_0

    const/16 v0, 0x1f42

    if-eq v1, v0, :cond_0

    const/16 v0, 0xfae

    if-eq v1, v0, :cond_0

    const/16 v0, 0xfb3

    if-eq v1, v0, :cond_0

    const/16 v0, -0xa

    if-eq v2, v0, :cond_0

    .line 1791
    const-string v0, "ImsVT"

    const-string v6, "Error: post event to Call is already release or has happen error before!"

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1792
    return-void

    .line 1795
    :cond_0
    const-string v0, "ImsVT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[ID="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] [postEventFromNative]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1796
    const/16 v0, 0xfa8

    if-eq v1, v0, :cond_20

    const/high16 v0, 0x10000

    packed-switch v1, :pswitch_data_0

    const/4 v6, 0x4

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    packed-switch v1, :pswitch_data_3

    .line 2361
    const-string v0, "ImsVT"

    const-string v6, "postEventFromNative : msg = UNKNOWB"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 2328
    :pswitch_0
    const-string v0, "ImsVT"

    const-string v6, "postEventFromNative : msg = MSG_ERROR_CAMERA_SET_IGNORED"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2330
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 2331
    goto/16 :goto_c

    .line 2322
    :pswitch_1
    const-string v0, "ImsVT"

    const-string v6, "postEventFromNative : msg = MSG_ERROR_REC"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2324
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 2325
    goto/16 :goto_c

    .line 2316
    :pswitch_2
    const-string v0, "ImsVT"

    const-string v6, "postEventFromNative : msg = MSG_ERROR_CODEC"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2318
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 2319
    goto/16 :goto_c

    .line 2309
    :pswitch_3
    const-string v0, "ImsVT"

    const-string v6, "postEventFromNative : msg = MSG_ERROR_CAMERA_CRASHED"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2311
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleMaErrorProcess()V

    .line 2312
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 2313
    goto/16 :goto_c

    .line 2290
    :pswitch_4
    const-string v0, "ImsVT"

    const-string v6, "postEventFromNative : msg = MSG_ERROR_SERVER_DIED"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2291
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->quitAllThread()V

    .line 2292
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->recordRemoveAll()V

    .line 2293
    invoke-static {}, Lcom/mediatek/ims/internal/ImsVTProvider;->updateDefaultId()V

    .line 2297
    if-eqz v5, :cond_1

    .line 2299
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getSource()Lcom/mediatek/ims/internal/VTSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/VTSource;->release()V

    .line 2301
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 2302
    iget-object v0, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 2305
    :cond_1
    invoke-static {}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->getInstance()Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->reInitRefVTP()V

    .line 2306
    goto/16 :goto_c

    .line 2278
    :pswitch_5
    const-string v0, "ImsVT"

    const-string v6, "postEventFromNative : msg = MSG_ERROR_SERVICE"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2281
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getSource()Lcom/mediatek/ims/internal/VTSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/VTSource;->release()V

    .line 2283
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->recordRemove(I)V

    .line 2284
    invoke-static {}, Lcom/mediatek/ims/internal/ImsVTProvider;->updateDefaultId()V

    .line 2286
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 2287
    goto/16 :goto_c

    .line 2085
    :pswitch_6
    const-string v0, "ImsVT"

    const-string v6, "postEventFromNative : msg = SESSION_EVENT_PACKET_LOSS_RATE"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2090
    move v0, v3

    .line 2091
    .local v0, "lossRate":I
    const-string v6, "ImsVT"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Packet loss rate = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2093
    const/4 v6, 0x5

    if-ltz v0, :cond_2

    if-gt v0, v6, :cond_2

    .line 2094
    const-string v6, "ImsVT"

    const-string v7, "Packet loss rate low, notify: 4023"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2095
    const/16 v6, 0xfb7

    invoke-virtual {v5, v6}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    goto :goto_0

    .line 2097
    :cond_2
    const/16 v7, 0xa

    if-ge v6, v0, :cond_3

    if-gt v0, v7, :cond_3

    .line 2098
    const-string v6, "ImsVT"

    const-string v7, "Packet loss rate medium, notify: 4022"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2099
    const/16 v6, 0xfb6

    invoke-virtual {v5, v6}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    goto :goto_0

    .line 2101
    :cond_3
    if-ge v7, v0, :cond_4

    .line 2102
    const-string v6, "ImsVT"

    const-string v7, "Packet loss rate high, notify: 4021"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2103
    const/16 v6, 0xfb5

    invoke-virtual {v5, v6}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    goto :goto_0

    .line 2106
    :cond_4
    const-string v6, "ImsVT"

    const-string v7, "Packet loss rate incorrect"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2112
    :goto_0
    const-string v6, "persist.vendor.vt.RTPInfo"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 2113
    .local v6, "RTP_DBG_ON":Z
    if-eqz v6, :cond_21

    .line 2114
    const/4 v7, -0x1

    mul-int/2addr v7, v0

    int-to-long v7, v7

    invoke-virtual {v5, v7, v8}, Lcom/mediatek/ims/internal/ImsVTProvider;->changeCallDataUsage(J)V

    goto/16 :goto_c

    .line 2128
    .end local v0    # "lossRate":I
    .end local v6    # "RTP_DBG_ON":Z
    :pswitch_7
    const-string v0, "ImsVT"

    const-string v6, "postEventFromNative : msg = SESSION_EVENT_GET_CAP_WITH_SIM"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2131
    sget-boolean v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->sIsNoCameraMode:Z

    if-eqz v0, :cond_5

    .line 2132
    invoke-static {}, Lcom/mediatek/ims/internal/VTDummySource;->getAllCameraResolutions()[Lcom/mediatek/ims/internal/VTSource$Resolution;

    move-result-object v0

    .local v0, "cams_info":[Lcom/mediatek/ims/internal/VTSource$Resolution;
    goto :goto_1

    .line 2134
    .end local v0    # "cams_info":[Lcom/mediatek/ims/internal/VTSource$Resolution;
    :cond_5
    invoke-static {}, Lcom/mediatek/ims/internal/VTSource;->getAllCameraResolutions()[Lcom/mediatek/ims/internal/VTSource$Resolution;

    move-result-object v0

    .restart local v0    # "cams_info":[Lcom/mediatek/ims/internal/VTSource$Resolution;
    :goto_1
    move-object v6, v0

    .line 2136
    .end local v0    # "cams_info":[Lcom/mediatek/ims/internal/VTSource$Resolution;
    .local v6, "cams_info":[Lcom/mediatek/ims/internal/VTSource$Resolution;
    if-nez v6, :cond_6

    .line 2137
    const-string v0, "ImsVT"

    const-string v7, "Error: sensor resolution = NULL"

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2140
    :cond_6
    const/4 v7, 0x0

    .line 2141
    .local v7, "major_sim_id":I
    move v10, v9

    .line 2144
    .local v10, "ImsCount":I
    :try_start_0
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->getImsExtCallUtil()Lcom/mediatek/ims/plugin/impl/ImsCallPluginBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/plugin/impl/ImsCallPluginBase;->getModemMultiImsCount()I

    move-result v0
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    move v10, v0

    .line 2147
    goto :goto_2

    .line 2145
    :catch_0
    move-exception v0

    .line 2146
    .local v0, "e":Lcom/android/ims/ImsException;
    const-string v11, "ImsVT"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getModemMultiImsCount with exception:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2150
    .end local v0    # "e":Lcom/android/ims/ImsException;
    :goto_2
    const-wide/16 v11, 0xc8

    if-gt v10, v9, :cond_8

    .line 2152
    :goto_3
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->getImsExtCallUtil()Lcom/mediatek/ims/plugin/impl/ImsCallPluginBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/plugin/impl/ImsCallPluginBase;->isCapabilitySwitching()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2154
    :try_start_1
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2156
    :goto_4
    goto :goto_3

    .line 2155
    :catch_1
    move-exception v0

    goto :goto_4

    .line 2159
    :cond_7
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->getMainCapabilityPhoneId()I

    move-result v0

    goto :goto_5

    .line 2162
    :cond_8
    move v0, v2

    .line 2165
    .end local v7    # "major_sim_id":I
    .local v0, "major_sim_id":I
    :goto_5
    move v7, v0

    .end local v0    # "major_sim_id":I
    .restart local v7    # "major_sim_id":I
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v0, v7}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->waitSimStateStable(I)V

    .line 2167
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v0, v7}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->getSimCardState(I)I

    move-result v0

    const/16 v9, 0xb

    if-eq v0, v9, :cond_c

    .line 2172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "vendor.ril.iccid.sim"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2173
    .local v9, "iccid_prop":Ljava/lang/String;
    const-string v0, ""

    invoke-static {v9, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2174
    .local v0, "iccid":Ljava/lang/String;
    move-object v13, v0

    .line 2176
    .end local v0    # "iccid":Ljava/lang/String;
    .local v8, "count":I
    .local v13, "iccid":Ljava/lang/String;
    :goto_6
    const-string v0, ""

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v11, 0x32

    if-eqz v0, :cond_9

    if-ge v8, v11, :cond_9

    .line 2178
    const-wide/16 v11, 0xc8

    :try_start_2
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2180
    goto :goto_7

    .line 2179
    :catch_2
    move-exception v0

    .line 2181
    :goto_7
    const-string v0, ""

    invoke-static {v9, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2182
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 2185
    :cond_9
    const-string v0, "N/A"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    if-lt v8, v11, :cond_a

    goto :goto_8

    .line 2189
    :cond_a
    const-string v0, "ImsVT"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SIM state READY, iccid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v8    # "count":I
    .end local v9    # "iccid_prop":Ljava/lang/String;
    .end local v13    # "iccid":Ljava/lang/String;
    goto :goto_9

    .line 2186
    .restart local v8    # "count":I
    .restart local v9    # "iccid_prop":Ljava/lang/String;
    .restart local v13    # "iccid":Ljava/lang/String;
    :cond_b
    :goto_8
    const-string v0, "ImsVT"

    const-string v11, "SIM state ABSENT"

    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2187
    const/4 v7, -0x1

    .line 2193
    .end local v8    # "count":I
    .end local v9    # "iccid_prop":Ljava/lang/String;
    .end local v13    # "iccid":Ljava/lang/String;
    :cond_c
    :goto_9
    invoke-static {v2, v7, v6}, Lcom/mediatek/ims/internal/ImsVTProvider;->nSetCameraParametersWithSim(II[Lcom/mediatek/ims/internal/VTSource$Resolution;)I

    .line 2194
    goto/16 :goto_c

    .line 2343
    .end local v6    # "cams_info":[Lcom/mediatek/ims/internal/VTSource$Resolution;
    .end local v7    # "major_sim_id":I
    .end local v10    # "ImsCount":I
    :pswitch_8
    const-string v0, "ImsVT"

    const-string v6, "postEventFromNative : msg = SESSION_EVENT_GET_SENSOR_INFO"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2345
    invoke-static {}, Lcom/mediatek/ims/internal/VTSource;->getAllCameraResolutions()[Lcom/mediatek/ims/internal/VTSource$Resolution;

    move-result-object v0

    .line 2346
    .local v0, "cams_info":[Lcom/mediatek/ims/internal/VTSource$Resolution;
    if-nez v0, :cond_d

    .line 2347
    const-string v6, "ImsVT"

    const-string v7, "Error: sensor resolution = NULL"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2350
    :cond_d
    invoke-static {v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->nSetCameraParametersOnly([Lcom/mediatek/ims/internal/VTSource$Resolution;)I

    .line 2351
    goto/16 :goto_c

    .line 2355
    .end local v0    # "cams_info":[Lcom/mediatek/ims/internal/VTSource$Resolution;
    :pswitch_9
    const-string v0, "ImsVT"

    const-string v6, "postEventFromNative : msg = SESSION_EVENT_RESTART_CAMERA"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2357
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getSource()Lcom/mediatek/ims/internal/VTSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/VTSource;->restart()V

    .line 2358
    goto/16 :goto_c

    .line 2224
    :pswitch_a
    const-string v0, "ImsVT"

    const-string v6, "postEventFromNative : msg = SESSION_EVENT_UPLINK_STATE_CHANGE"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2225
    iput v3, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mUplinkState:I

    .line 2227
    packed-switch v3, :pswitch_data_4

    .line 2266
    goto/16 :goto_c

    .line 2260
    :pswitch_b
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getSource()Lcom/mediatek/ims/internal/VTSource;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 2261
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getSource()Lcom/mediatek/ims/internal/VTSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/VTSource;->stopRecordingAndPreview()V

    goto/16 :goto_c

    .line 2249
    :pswitch_c
    if-ne v4, v9, :cond_21

    .line 2250
    iget v0, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mPauseCount:I

    sub-int/2addr v0, v9

    iput v0, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mPauseCount:I

    .line 2253
    iget v0, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mPauseCount:I

    if-nez v0, :cond_21

    .line 2254
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getSource()Lcom/mediatek/ims/internal/VTSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/VTSource;->startRecording()V

    goto/16 :goto_c

    .line 2239
    :pswitch_d
    if-ne v4, v9, :cond_21

    .line 2240
    iget v0, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mPauseCount:I

    if-nez v0, :cond_e

    .line 2241
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getSource()Lcom/mediatek/ims/internal/VTSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/VTSource;->stopRecording()V

    .line 2244
    :cond_e
    iget v0, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mPauseCount:I

    add-int/2addr v0, v9

    iput v0, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mPauseCount:I

    goto/16 :goto_c

    .line 2236
    :pswitch_e
    goto/16 :goto_c

    .line 2229
    :pswitch_f
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getSource()Lcom/mediatek/ims/internal/VTSource;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 2230
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getSource()Lcom/mediatek/ims/internal/VTSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/VTSource;->stopRecording()V

    .line 2231
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getSource()Lcom/mediatek/ims/internal/VTSource;

    move-result-object v0

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/mediatek/ims/internal/VTSource;->setRecordSurface(Landroid/view/Surface;)V

    goto/16 :goto_c

    .line 2215
    :pswitch_10
    const-string v0, "ImsVT"

    const-string v6, "postEventFromNative : msg = SESSION_EVENT_LOCAL_BUFFER"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2217
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getSource()Lcom/mediatek/ims/internal/VTSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/VTSource;->stopRecording()V

    .line 2218
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getSource()Lcom/mediatek/ims/internal/VTSource;

    move-result-object v0

    move-object/from16 v6, p7

    check-cast v6, Landroid/view/Surface;

    invoke-virtual {v0, v6}, Lcom/mediatek/ims/internal/VTSource;->setRecordSurface(Landroid/view/Surface;)V

    .line 2219
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getSource()Lcom/mediatek/ims/internal/VTSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/VTSource;->startRecording()V

    .line 2220
    iput v8, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mPauseCount:I

    .line 2221
    goto/16 :goto_c

    .line 2198
    :pswitch_11
    const-string v0, "ImsVT"

    const-string v6, "postEventFromNative : msg = SESSION_EVENT_GET_CAP"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2201
    sget-boolean v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->sIsNoCameraMode:Z

    if-eqz v0, :cond_f

    .line 2202
    invoke-static {}, Lcom/mediatek/ims/internal/VTDummySource;->getAllCameraResolutions()[Lcom/mediatek/ims/internal/VTSource$Resolution;

    move-result-object v0

    .restart local v0    # "cams_info":[Lcom/mediatek/ims/internal/VTSource$Resolution;
    goto :goto_a

    .line 2204
    .end local v0    # "cams_info":[Lcom/mediatek/ims/internal/VTSource$Resolution;
    :cond_f
    invoke-static {}, Lcom/mediatek/ims/internal/VTSource;->getAllCameraResolutions()[Lcom/mediatek/ims/internal/VTSource$Resolution;

    move-result-object v0

    .line 2206
    .restart local v0    # "cams_info":[Lcom/mediatek/ims/internal/VTSource$Resolution;
    :goto_a
    if-nez v0, :cond_10

    .line 2207
    const-string v6, "ImsVT"

    const-string v7, "Error: sensor resolution = NULL"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2210
    :cond_10
    invoke-static {v2, v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->nSetCameraParameters(I[Lcom/mediatek/ims/internal/VTSource$Resolution;)I

    .line 2211
    goto/16 :goto_c

    .line 2272
    .end local v0    # "cams_info":[Lcom/mediatek/ims/internal/VTSource$Resolution;
    :pswitch_12
    const-string v0, "ImsVT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "postEventFromNative : msg = SESSION_EVENT_DEFAULT_LOCAL_SIZE, W="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", H="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2273
    iget-object v0, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iput v3, v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->width:I

    .line 2274
    iget-object v0, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iput v4, v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->height:I

    .line 2275
    goto/16 :goto_c

    .line 2335
    :pswitch_13
    const-string v0, "ImsVT"

    const-string v6, "postEventFromNative : msg = EVENT_DATA_PATH_CHANGED"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2337
    sget-boolean v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->sIsNoCameraMode:Z

    if-nez v0, :cond_21

    .line 2338
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    goto/16 :goto_c

    .line 1942
    :pswitch_14
    const-string v0, "ImsVT"

    const-string v6, "postEventFromNative : msg = SESSION_EVENT_RECV_CANCEL_SESSION_IND"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1944
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    move-object/from16 v6, p5

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->unPackToVdoProfile(Ljava/lang/String;)Landroid/telecom/VideoProfile;

    move-result-object v0

    .line 1946
    .local v0, "IndicationProfile":Landroid/telecom/VideoProfile;
    invoke-virtual {v5, v8}, Lcom/mediatek/ims/internal/ImsVTProvider;->setDuringSessionRemoteRequest(Z)V

    .line 1948
    invoke-virtual {v5, v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    .line 1949
    goto/16 :goto_c

    .line 2081
    .end local v0    # "IndicationProfile":Landroid/telecom/VideoProfile;
    :pswitch_15
    const-string v0, "ImsVT"

    const-string v6, "postEventFromNative : msg = SESSION_EVENT_DATA_USAGE_CHANGED"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2082
    goto/16 :goto_c

    .line 2060
    :pswitch_16
    const-string v0, "ImsVT"

    const-string v6, "postEventFromNative : msg = SESSION_EVENT_LOCAL_SIZE_CHANGED"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2062
    iget-object v0, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget v0, v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->width:I

    if-ne v0, v3, :cond_11

    iget-object v0, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget v0, v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->height:I

    if-ne v0, v4, :cond_11

    .line 2063
    const-string v0, "ImsVT"

    const-string v6, "local size no change => Do not notify!"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2064
    goto/16 :goto_c

    .line 2067
    :cond_11
    iget-object v0, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iput v3, v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->width:I

    .line 2068
    iget-object v0, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iput v4, v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->height:I

    .line 2069
    const-string v0, "ImsVT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Update preview size, w="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget v7, v7, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->width:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", h="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget v7, v7, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->height:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2072
    iget-boolean v0, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mHasRequestCamCap:Z

    if-ne v9, v0, :cond_12

    .line 2073
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->onRequestCameraCapabilities()V

    goto/16 :goto_c

    .line 2075
    :cond_12
    const-string v0, "ImsVT"

    const-string v6, "Not request yet, just only update default w/h"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2077
    goto/16 :goto_c

    .line 2055
    :pswitch_17
    const-string v0, "ImsVT"

    const-string v6, "postEventFromNative : msg = SESSION_EVENT_PEER_SIZE_CHANGED"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2056
    invoke-virtual {v5, v3, v4}, Lcom/mediatek/ims/internal/ImsVTProvider;->changePeerDimensions(II)V

    .line 2057
    goto/16 :goto_c

    .line 2049
    :pswitch_18
    const-string v0, "ImsVT"

    const-string v6, "postEventFromNative : msg = SESSION_EVENT_HANDLE_CALL_SESSION_EVT"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2051
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 2052
    goto/16 :goto_c

    .line 1952
    :pswitch_19
    const-string v11, "ImsVT"

    const-string v12, "postEventFromNative : msg = SESSION_EVENT_RECV_SESSION_CONFIG_RSP"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1954
    iget v11, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    if-ne v11, v0, :cond_13

    .line 1955
    const-string v0, "ImsVT"

    const-string v6, "postEventFromNative : msg = SESSION_EVENT_RECV_SESSION_CONFIG_RSP (call end)"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1956
    return-void

    .line 1959
    :cond_13
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    move-object/from16 v11, p6

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v0, v11}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->unPackToVdoProfile(Ljava/lang/String;)Landroid/telecom/VideoProfile;

    move-result-object v0

    .line 1960
    .local v0, "responseProfile":Landroid/telecom/VideoProfile;
    const/4 v11, 0x2

    .line 1963
    .local v11, "state":I
    invoke-virtual {v0}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v12

    sget-object v13, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v13}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->getImsExtCallUtil()Lcom/mediatek/ims/plugin/impl/ImsCallPluginBase;

    move-result-object v13

    invoke-virtual {v13}, Lcom/mediatek/ims/plugin/impl/ImsCallPluginBase;->getUpgradeCancelFlag()I

    move-result v13

    if-ne v12, v13, :cond_15

    .line 1965
    const/16 v7, 0xc8

    .line 1967
    .end local v11    # "state":I
    .local v7, "state":I
    if-eq v3, v6, :cond_14

    packed-switch v3, :pswitch_data_5

    .line 1980
    const/16 v6, 0xc8

    .line 1982
    .end local v7    # "state":I
    .local v6, "state":I
    goto :goto_b

    .line 1972
    .end local v6    # "state":I
    .restart local v7    # "state":I
    :pswitch_1a
    const/16 v6, 0xc9

    .line 1974
    .end local v7    # "state":I
    .restart local v6    # "state":I
    goto :goto_b

    .line 1969
    .end local v6    # "state":I
    .restart local v7    # "state":I
    :pswitch_1b
    const/4 v6, 0x1

    .line 1970
    .end local v7    # "state":I
    .restart local v6    # "state":I
    goto :goto_b

    .line 1976
    .end local v6    # "state":I
    .restart local v7    # "state":I
    :cond_14
    const/16 v6, 0xca

    .line 1978
    .end local v7    # "state":I
    .restart local v6    # "state":I
    goto :goto_b

    .line 1987
    .end local v6    # "state":I
    .restart local v11    # "state":I
    :cond_15
    if-eqz v3, :cond_18

    if-eq v3, v6, :cond_17

    packed-switch v3, :pswitch_data_6

    packed-switch v3, :pswitch_data_7

    .line 2035
    const/4 v6, 0x2

    .end local v11    # "state":I
    .restart local v6    # "state":I
    goto :goto_b

    .line 2030
    .end local v6    # "state":I
    .restart local v11    # "state":I
    :pswitch_1c
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->reSendLastSessionModify()V

    .line 2031
    return-void

    .line 2018
    :pswitch_1d
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->isDuringNotAppDowngrade()Z

    move-result v6

    if-eqz v6, :cond_16

    .line 2019
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->reSendLastSessionModify()V

    .line 2020
    return-void

    .line 2023
    :cond_16
    const/4 v6, 0x5

    .line 2025
    .end local v11    # "state":I
    .restart local v6    # "state":I
    goto :goto_b

    .line 2013
    .end local v6    # "state":I
    .restart local v11    # "state":I
    :pswitch_1e
    const/4 v6, 0x4

    .line 2014
    .end local v11    # "state":I
    .restart local v6    # "state":I
    goto :goto_b

    .line 2010
    .end local v6    # "state":I
    .restart local v11    # "state":I
    :pswitch_1f
    const/4 v6, 0x3

    .line 2011
    .end local v11    # "state":I
    .restart local v6    # "state":I
    goto :goto_b

    .line 2005
    .end local v6    # "state":I
    .restart local v11    # "state":I
    :cond_17
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->reSendLastSessionModify()V

    .line 2006
    return-void

    .line 1989
    :cond_18
    sget-object v12, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    iget v13, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mSimId:I

    invoke-virtual {v12, v13}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->isVideoCallOn(I)Z

    move-result v12

    if-eqz v12, :cond_19

    iget v12, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    .line 1990
    invoke-virtual {v5, v12, v9}, Lcom/mediatek/ims/internal/ImsVTProvider;->hasState(II)Z

    move-result v9

    if-nez v9, :cond_19

    iget v9, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    .line 1991
    invoke-virtual {v5, v9, v7}, Lcom/mediatek/ims/internal/ImsVTProvider;->hasState(II)Z

    move-result v9

    if-nez v9, :cond_19

    iget v9, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    .line 1992
    invoke-virtual {v5, v9, v6}, Lcom/mediatek/ims/internal/ImsVTProvider;->hasState(II)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 1993
    :cond_19
    invoke-virtual {v0}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v6

    invoke-static {v6}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 1995
    new-instance v6, Landroid/telecom/VideoProfile;

    invoke-direct {v6, v8, v7}, Landroid/telecom/VideoProfile;-><init>(II)V

    .line 1996
    .local v6, "audioProfile":Landroid/telecom/VideoProfile;
    iput-object v6, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    .line 1997
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->reSendLastSessionModify()V

    .line 1998
    return-void

    .line 2001
    .end local v6    # "audioProfile":Landroid/telecom/VideoProfile;
    :cond_1a
    const/4 v6, 0x1

    .line 2002
    .end local v11    # "state":I
    .local v6, "state":I
    nop

    .line 2040
    :goto_b
    sget-object v7, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    move-object/from16 v8, p5

    check-cast v8, Ljava/lang/String;

    .line 2042
    invoke-virtual {v7, v8}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->unPackToVdoProfile(Ljava/lang/String;)Landroid/telecom/VideoProfile;

    move-result-object v7

    sget-object v8, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    move-object/from16 v9, p6

    check-cast v9, Ljava/lang/String;

    .line 2043
    invoke-virtual {v8, v9}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->unPackToVdoProfile(Ljava/lang/String;)Landroid/telecom/VideoProfile;

    move-result-object v8

    .line 2040
    invoke-virtual {v5, v6, v7, v8}, Lcom/mediatek/ims/internal/ImsVTProvider;->receiveSessionModifyResponseInternal(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 2045
    goto/16 :goto_c

    .line 1886
    .end local v0    # "responseProfile":Landroid/telecom/VideoProfile;
    .end local v6    # "state":I
    :pswitch_20
    const-string v0, "ImsVT"

    const-string v11, "postEventFromNative : msg = SESSION_EVENT_RECV_SESSION_CONFIG_REQ"

    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1889
    new-instance v0, Landroid/telecom/VideoProfile;

    const/4 v11, 0x3

    invoke-direct {v0, v11, v7}, Landroid/telecom/VideoProfile;-><init>(II)V

    .line 1890
    .local v0, "currentProfile":Landroid/telecom/VideoProfile;
    sget-object v11, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    move-object/from16 v12, p5

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->unPackToVdoProfile(Ljava/lang/String;)Landroid/telecom/VideoProfile;

    move-result-object v11

    .line 1893
    .local v11, "requestProfile":Landroid/telecom/VideoProfile;
    sget-object v12, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    iget v13, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mSimId:I

    invoke-virtual {v12, v13}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->isVideoCallOn(I)Z

    move-result v12

    if-eqz v12, :cond_1b

    iget v12, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    .line 1894
    invoke-virtual {v5, v12, v9}, Lcom/mediatek/ims/internal/ImsVTProvider;->hasState(II)Z

    move-result v12

    if-nez v12, :cond_1b

    iget v12, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    .line 1895
    invoke-virtual {v5, v12, v7}, Lcom/mediatek/ims/internal/ImsVTProvider;->hasState(II)Z

    move-result v12

    if-nez v12, :cond_1b

    iget v12, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    .line 1896
    invoke-virtual {v5, v12, v6}, Lcom/mediatek/ims/internal/ImsVTProvider;->hasState(II)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 1897
    :cond_1b
    invoke-virtual {v11}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v6

    invoke-static {v6}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 1899
    new-instance v6, Landroid/telecom/VideoProfile;

    invoke-direct {v6, v8, v7}, Landroid/telecom/VideoProfile;-><init>(II)V

    .line 1900
    .local v6, "audioProfile":Landroid/telecom/VideoProfile;
    iput-object v6, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    .line 1902
    iget-object v7, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    invoke-virtual {v5, v7}, Lcom/mediatek/ims/internal/ImsVTProvider;->onSendSessionModifyResponse(Landroid/telecom/VideoProfile;)V

    .line 1903
    const-string v7, "ImsVT"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[ID="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "] [onSendSessionModifyRequest] Reject it by state:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1904
    return-void

    .line 1907
    .end local v6    # "audioProfile":Landroid/telecom/VideoProfile;
    :cond_1c
    invoke-virtual {v5, v8, v0, v11}, Lcom/mediatek/ims/internal/ImsVTProvider;->doSessionModifyDecision(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)I

    move-result v6

    .line 1909
    .local v6, "decision":I
    if-ne v9, v6, :cond_1d

    .line 1911
    invoke-virtual {v5, v9}, Lcom/mediatek/ims/internal/ImsVTProvider;->setDuringSessionRemoteRequest(Z)V

    .line 1912
    iget-object v7, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    invoke-virtual {v5, v7}, Lcom/mediatek/ims/internal/ImsVTProvider;->onSendSessionModifyResponse(Landroid/telecom/VideoProfile;)V

    goto/16 :goto_c

    .line 1914
    :cond_1d
    if-nez v6, :cond_1f

    .line 1916
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitSessionOperationComplete()V

    .line 1919
    invoke-virtual {v11}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v7

    invoke-static {v7}, Landroid/telecom/VideoProfile;->isBidirectional(I)Z

    move-result v7

    if-nez v7, :cond_1e

    .line 1921
    const-string v7, "ImsVT"

    const-string v8, "Do onSendSessionModifyResponse directly for not upgrade case"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1923
    invoke-virtual {v5, v9}, Lcom/mediatek/ims/internal/ImsVTProvider;->setDuringSessionRemoteRequest(Z)V

    .line 1924
    invoke-virtual {v5, v11}, Lcom/mediatek/ims/internal/ImsVTProvider;->onSendSessionModifyResponse(Landroid/telecom/VideoProfile;)V

    goto/16 :goto_c

    .line 1927
    :cond_1e
    invoke-virtual {v5, v9}, Lcom/mediatek/ims/internal/ImsVTProvider;->setDuringSessionRemoteRequest(Z)V

    .line 1928
    invoke-virtual {v5, v11}, Lcom/mediatek/ims/internal/ImsVTProvider;->receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    goto/16 :goto_c

    .line 1933
    :cond_1f
    const-string v7, "ImsVT"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[ID="

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getId()I

    move-result v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "] [onReceiveSessionModifyRequest] should not in this case"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1934
    invoke-virtual {v5, v9}, Lcom/mediatek/ims/internal/ImsVTProvider;->setDuringSessionRemoteRequest(Z)V

    .line 1935
    invoke-virtual {v5, v11}, Lcom/mediatek/ims/internal/ImsVTProvider;->onSendSessionModifyResponse(Landroid/telecom/VideoProfile;)V

    .line 1938
    goto/16 :goto_c

    .line 1880
    .end local v0    # "currentProfile":Landroid/telecom/VideoProfile;
    .end local v6    # "decision":I
    .end local v11    # "requestProfile":Landroid/telecom/VideoProfile;
    :pswitch_21
    const-string v0, "ImsVT"

    const-string v6, "postEventFromNative : msg = SESSION_EVENT_LOCAL_BW_READY_IND"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1882
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 1883
    goto/16 :goto_c

    .line 1874
    :pswitch_22
    const-string v0, "ImsVT"

    const-string v6, "postEventFromNative : msg = MSG_PEER_CAMERA_CLOSE"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1876
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 1877
    goto/16 :goto_c

    .line 1868
    :pswitch_23
    const-string v0, "ImsVT"

    const-string v6, "postEventFromNative : msg = MSG_PEER_CAMERA_OPEN"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1870
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 1871
    goto/16 :goto_c

    .line 1862
    :pswitch_24
    const-string v0, "ImsVT"

    const-string v6, "postEventFromNative : msg = MSG_START_COUNTER"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1864
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 1865
    goto/16 :goto_c

    .line 1845
    :pswitch_25
    const-string v6, "ImsVT"

    const-string v7, "postEventFromNative : msg = SESSION_EVENT_CALL_END / SESSION_EVENT_CALL_ABNORMAL_END"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1849
    invoke-virtual {v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->getSource()Lcom/mediatek/ims/internal/VTSource;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/ims/internal/VTSource;->release()V

    .line 1851
    sget-object v6, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v6, v2}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->recordRemove(I)V

    .line 1852
    invoke-static {}, Lcom/mediatek/ims/internal/ImsVTProvider;->updateDefaultId()V

    .line 1854
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 1856
    iget-object v6, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 1858
    iput v0, v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    .line 1859
    goto :goto_c

    .line 1837
    :pswitch_26
    const-string v0, "ImsVT"

    const-string v6, "postEventFromNative : msg = SESSION_EVENT_RECORDER_EVENT_INFO_COMPLETE"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1840
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 1841
    goto :goto_c

    .line 1830
    :pswitch_27
    const-string v0, "ImsVT"

    const-string v6, "postEventFromNative : msg = SESSION_EVENT_RECORDER_EVENT_INFO_NO_I_FRAME"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1833
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 1834
    goto :goto_c

    .line 1823
    :pswitch_28
    const-string v0, "ImsVT"

    const-string v6, "postEventFromNative : msg = SESSION_EVENT_RECORDER_EVENT_INFO_REACH_MAX_FILESIZE"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1826
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 1827
    goto :goto_c

    .line 1816
    :pswitch_29
    const-string v0, "ImsVT"

    const-string v6, "postEventFromNative : msg = SESSION_EVENT_RECORDER_EVENT_INFO_REACH_MAX_DURATION"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1819
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 1820
    goto :goto_c

    .line 1810
    :pswitch_2a
    const-string v0, "ImsVT"

    const-string v6, "postEventFromNative : msg = SESSION_EVENT_RECORDER_EVENT_INFO_UNKNOWN"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1812
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 1813
    goto :goto_c

    .line 1804
    :pswitch_2b
    const-string v0, "ImsVT"

    const-string v6, "postEventFromNative : msg = SESSION_EVENT_SNAPSHOT_DONE"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1806
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 1807
    goto :goto_c

    .line 1798
    :pswitch_2c
    const-string v0, "ImsVT"

    const-string v6, "postEventFromNative : msg = SESSION_EVENT_RECEIVE_FIRSTFRAME"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1800
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 1801
    goto :goto_c

    .line 2120
    :cond_20
    const-string v0, "ImsVT"

    const-string v6, "postEventFromNative : msg = SESSION_EVENT_BAD_DATA_BITRATE"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2122
    sget-boolean v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->sIsNoCameraMode:Z

    if-nez v0, :cond_21

    .line 2123
    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 2364
    :cond_21
    :goto_c
    return-void

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xfa1
        :pswitch_20
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xfaa
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1f41
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x7
        :pswitch_1f
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0xc
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method

.method protected static updateDefaultId()V
    .locals 2

    .line 667
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    sget v1, Lcom/mediatek/ims/internal/ImsVTProvider;->mDefaultId:I

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->recordContain(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 668
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->recordSize()I

    move-result v0

    if-eqz v0, :cond_0

    .line 669
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->recordPopId()I

    move-result v0

    sput v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDefaultId:I

    .line 670
    return-void

    .line 672
    :cond_0
    const/16 v0, -0x2710

    sput v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDefaultId:I

    .line 674
    :cond_1
    return-void
.end method


# virtual methods
.method public addVideoProviderStateListener(Lcom/mediatek/ims/internal/ImsVTProvider$VideoProviderStateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/mediatek/ims/internal/ImsVTProvider$VideoProviderStateListener;

    .line 1687
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1688
    return-void
.end method

.method public doSessionModifyDecision(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)I
    .locals 4
    .param p1, "new_action"    # I
    .param p2, "fromProfile"    # Landroid/telecom/VideoProfile;
    .param p3, "toProfile"    # Landroid/telecom/VideoProfile;

    .line 1473
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_7

    .line 1475
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getRoaming()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1477
    const-string v1, "ImsVT"

    const-string v2, "doSessionModifyDecision : new_action : from APP, reject due to during roaming"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1479
    return v0

    .line 1481
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getMaCrash()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1483
    const-string v1, "ImsVT"

    const-string v2, "doSessionModifyDecision : new_action : from APP, reject due to during MA crash"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1485
    return v0

    .line 1487
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDataOff()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1489
    invoke-virtual {p3}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v2

    invoke-static {v2}, Landroid/telecom/VideoProfile;->isAudioOnly(I)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1491
    const-string v1, "ImsVT"

    const-string v2, "doSessionModifyDecision : new_action : from APP, reject due to during data off and not downgrade"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    return v0

    .line 1496
    :cond_2
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->isDuringSessionModify()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1498
    const/4 v1, 0x0

    .line 1500
    .local v1, "isCancelUpgrade":Z
    invoke-virtual {p3}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v2

    sget-object v3, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v3}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->getImsExtCallUtil()Lcom/mediatek/ims/plugin/impl/ImsCallPluginBase;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/ims/plugin/impl/ImsCallPluginBase;->getUpgradeCancelFlag()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 1502
    const-string v2, "ImsVT"

    const-string v3, "doSessionModifyDecision : new_action : from APP, isCancelUpgrade is true"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    const/4 v1, 0x1

    .line 1506
    :cond_3
    if-eqz v1, :cond_5

    .line 1508
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDuringSessionRemoteRequest()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1509
    const-string v2, "ImsVT"

    const-string v3, "doSessionModifyDecision : new_action : from APP, reject due to during App action"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1510
    return v0

    .line 1513
    :cond_4
    const-string v0, "ImsVT"

    const-string v2, "doSessionModifyDecision : new_action : from APP, send cancel request"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1514
    const/4 v0, 0x4

    return v0

    .line 1520
    :cond_5
    const-string v2, "ImsVT"

    const-string v3, "doSessionModifyDecision : new_action : from APP, reject due to during App action"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    return v0

    .line 1525
    .end local v1    # "isCancelUpgrade":Z
    :cond_6
    const-string v0, "ImsVT"

    const-string v2, "doSessionModifyDecision : new_action : from APP, wait"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    return v1

    .line 1529
    :cond_7
    const/4 v2, 0x2

    const/4 v3, 0x3

    if-ne v0, p1, :cond_d

    .line 1531
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1533
    const-string v0, "ImsVT"

    const-string v1, "doSessionModifyDecision : new_action : Data off, skip due to during roaming"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    return v3

    .line 1537
    :cond_8
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getMaCrash()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1539
    const-string v0, "ImsVT"

    const-string v1, "doSessionModifyDecision : new_action : Data off, skip due to during MA crash"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    return v3

    .line 1543
    :cond_9
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDataOff()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1545
    const-string v0, "ImsVT"

    const-string v1, "doSessionModifyDecision : new_action : Data off, reject due to data off"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    return v3

    .line 1549
    :cond_a
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->isDuringSessionModify()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1551
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDuringSessionRequest()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1553
    const-string v0, "ImsVT"

    const-string v2, "doSessionModifyDecision : new_action : Data off, wait for App action"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    return v1

    .line 1557
    :cond_b
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDuringSessionRemoteRequest()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1559
    const-string v0, "ImsVT"

    const-string v1, "doSessionModifyDecision : new_action : Data off, reject previous due to data off downgrade"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    return v2

    .line 1565
    :cond_c
    const-string v0, "ImsVT"

    const-string v2, "doSessionModifyDecision : new_action : Data off, wait"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1567
    return v1

    .line 1569
    :cond_d
    if-ne v2, p1, :cond_13

    .line 1571
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1573
    const-string v0, "ImsVT"

    const-string v1, "doSessionModifyDecision : new_action : Roaming, skip due to during roaming"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    return v3

    .line 1577
    :cond_e
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getMaCrash()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1579
    const-string v0, "ImsVT"

    const-string v1, "doSessionModifyDecision : new_action : Roaming, skip due to during MA crash"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1581
    return v3

    .line 1583
    :cond_f
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDataOff()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1585
    const-string v0, "ImsVT"

    const-string v1, "doSessionModifyDecision : new_action : Roaming, skip due to during data off"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1587
    return v3

    .line 1589
    :cond_10
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->isDuringSessionModify()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1591
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDuringSessionRequest()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1593
    const-string v0, "ImsVT"

    const-string v2, "doSessionModifyDecision : new_action : Roaming, wait for App action"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    return v1

    .line 1597
    :cond_11
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDuringSessionRemoteRequest()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1599
    const-string v0, "ImsVT"

    const-string v1, "doSessionModifyDecision : new_action : Roaming, reject previous due to roaming downgrade"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    return v2

    .line 1605
    :cond_12
    const-string v0, "ImsVT"

    const-string v2, "doSessionModifyDecision : new_action : Roaming, wait"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    return v1

    .line 1609
    :cond_13
    if-ne v3, p1, :cond_19

    .line 1611
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1613
    const-string v0, "ImsVT"

    const-string v1, "doSessionModifyDecision : new_action : MA crash, skip due to during roaming"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    return v3

    .line 1617
    :cond_14
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getMaCrash()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1619
    const-string v0, "ImsVT"

    const-string v1, "doSessionModifyDecision : new_action : MA crash, skip due to during MA crash"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    return v3

    .line 1623
    :cond_15
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDataOff()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1625
    const-string v0, "ImsVT"

    const-string v1, "doSessionModifyDecision : new_action : MA crash, skip due to during data off"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    return v3

    .line 1629
    :cond_16
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->isDuringSessionModify()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1631
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDuringSessionRequest()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1633
    const-string v0, "ImsVT"

    const-string v2, "doSessionModifyDecision : new_action : MA crash, wait for App action"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1635
    return v1

    .line 1637
    :cond_17
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDuringSessionRemoteRequest()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1639
    const-string v0, "ImsVT"

    const-string v1, "doSessionModifyDecision : new_action : MA crash, reject previous due to MA crash"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1641
    return v2

    .line 1645
    :cond_18
    const-string v0, "ImsVT"

    const-string v2, "doSessionModifyDecision : new_action : MA crash, wait"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    return v1

    .line 1651
    :cond_19
    const-string v0, "ImsVT"

    const-string v2, "doSessionModifyDecision : new_action : wait"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    return v1
.end method

.method public getDataOff()Z
    .locals 1

    .line 558
    iget-boolean v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsDataOff:Z

    return v0
.end method

.method public getDuringSessionRemoteRequest()Z
    .locals 1

    .line 536
    iget-boolean v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDuringSessionRemoteRequestOperation:Z

    return v0
.end method

.method public getDuringSessionRequest()Z
    .locals 1

    .line 524
    iget-boolean v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDuringSessionRequestOperation:Z

    return v0
.end method

.method public getId()I
    .locals 1

    .line 479
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    return v0
.end method

.method public getIsAudioCall()Z
    .locals 1

    .line 580
    iget-boolean v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsAudioCall:Z

    return v0
.end method

.method public getMaCrash()Z
    .locals 1

    .line 547
    iget-boolean v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsMaCrashed:Z

    return v0
.end method

.method public getRoaming()Z
    .locals 1

    .line 569
    iget-boolean v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsRoaming:Z

    return v0
.end method

.method protected getSessionModifyAction(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)I
    .locals 3
    .param p1, "fromProfile"    # Landroid/telecom/VideoProfile;
    .param p2, "toProfile"    # Landroid/telecom/VideoProfile;

    .line 1750
    const/4 v0, -0x1

    .line 1754
    .local v0, "result":I
    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v1

    invoke-static {v1}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1755
    const/4 v0, 0x1

    goto :goto_0

    .line 1756
    :cond_0
    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    if-ne v1, v2, :cond_1

    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v1

    invoke-static {v1}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1757
    const/4 v0, 0x0

    .line 1759
    :cond_1
    :goto_0
    return v0
.end method

.method public getSimId()I
    .locals 1

    .line 490
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSimId:I

    return v0
.end method

.method public getSource()Lcom/mediatek/ims/internal/VTSource;
    .locals 2

    .line 647
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    return-object v0

    .line 650
    :cond_0
    const-string v0, "ImsVT"

    const-string v1, "Get dummy vtsource"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDummySource:Lcom/mediatek/ims/internal/VTDummySource;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 494
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    return v0
.end method

.method public handleMaErrorProcess()V
    .locals 8

    .line 585
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [handleMaErrorProcess] start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_0

    .line 588
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [handleMaErrorProcess] call end"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    return-void

    .line 593
    :cond_0
    new-instance v0, Landroid/telecom/VideoProfile;

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/telecom/VideoProfile;-><init>(II)V

    .line 594
    .local v0, "currentProfile":Landroid/telecom/VideoProfile;
    new-instance v3, Landroid/telecom/VideoProfile;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v2}, Landroid/telecom/VideoProfile;-><init>(II)V

    .line 596
    .local v3, "reqestProfile":Landroid/telecom/VideoProfile;
    invoke-virtual {p0, v1, v0, v3}, Lcom/mediatek/ims/internal/ImsVTProvider;->doSessionModifyDecision(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)I

    move-result v5

    .line 598
    .local v5, "decision":I
    const/4 v6, 0x1

    if-ne v6, v5, :cond_1

    .line 600
    const-string v1, "ImsVT"

    const-string v2, "[handleMaErrorProcess] : should not in this case"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 602
    :cond_1
    if-ne v2, v5, :cond_2

    .line 605
    new-instance v1, Landroid/telecom/VideoProfile;

    invoke-direct {v1, v4, v2}, Landroid/telecom/VideoProfile;-><init>(II)V

    .line 607
    .local v1, "audioResponseProfile":Landroid/telecom/VideoProfile;
    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    sget-object v7, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    .line 608
    invoke-virtual {v7, v1}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->packFromVdoProfile(Landroid/telecom/VideoProfile;)Ljava/lang/String;

    move-result-object v7

    .line 607
    invoke-static {v2, v7}, Lcom/mediatek/ims/internal/ImsVTProvider;->nResponseLocalConfig(ILjava/lang/String;)I

    .line 609
    invoke-virtual {p0, v4}, Lcom/mediatek/ims/internal/ImsVTProvider;->setDuringSessionRemoteRequest(Z)V

    .line 611
    invoke-virtual {p0, v6}, Lcom/mediatek/ims/internal/ImsVTProvider;->setMaCrash(Z)V

    .line 612
    iput-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    .line 613
    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    sget-object v4, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v4, v3}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->packFromVdoProfile(Landroid/telecom/VideoProfile;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mediatek/ims/internal/ImsVTProvider;->nRequestPeerConfig(ILjava/lang/String;)I

    .line 615
    .end local v1    # "audioResponseProfile":Landroid/telecom/VideoProfile;
    goto :goto_0

    :cond_2
    if-ne v1, v5, :cond_3

    .line 617
    const-string v1, "ImsVT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ID="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] [sendSessionModifyRequestByImsInternal] skip"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 619
    :cond_3
    if-nez v5, :cond_4

    .line 621
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitSessionOperationComplete()V

    .line 623
    invoke-virtual {p0, v6}, Lcom/mediatek/ims/internal/ImsVTProvider;->setMaCrash(Z)V

    .line 624
    iput-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    .line 625
    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    sget-object v2, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v2, v3}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->packFromVdoProfile(Landroid/telecom/VideoProfile;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/ims/internal/ImsVTProvider;->nRequestPeerConfig(ILjava/lang/String;)I

    .line 628
    :cond_4
    :goto_0
    const-string v1, "ImsVT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ID="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] [handleMaErrorProcess] Finish"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    return-void
.end method

.method public hasState(II)Z
    .locals 1
    .param p1, "state"    # I
    .param p2, "vtp_state"    # I

    .line 503
    and-int v0, p1, p2

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isDuringNotAppDowngrade()Z
    .locals 1

    .line 1740
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getMaCrash()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1741
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDataOff()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    invoke-virtual {v0}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v0

    invoke-static {v0}, Landroid/telecom/VideoProfile;->isAudioOnly(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1742
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1745
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 1743
    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method protected isDuringSessionModify()Z
    .locals 1

    .line 1732
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDuringSessionRequest()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDuringSessionRemoteRequest()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1735
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1733
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public notifyResume()V
    .locals 0

    .line 1447
    return-void
.end method

.method public notifyVideoPauseStateChange()V
    .locals 6

    .line 1696
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [notifyVideoPauseStateChange] Start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1698
    const/4 v0, 0x0

    .line 1700
    .local v0, "isVideoStatePause":Z
    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    if-nez v1, :cond_0

    .line 1701
    const/4 v0, 0x0

    goto :goto_0

    .line 1702
    :cond_0
    const/4 v1, 0x1

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    if-ne v1, v2, :cond_1

    .line 1703
    const/4 v0, 0x1

    .line 1706
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/internal/ImsVTProvider$VideoProviderStateListener;

    .line 1707
    .local v2, "listener":Lcom/mediatek/ims/internal/ImsVTProvider$VideoProviderStateListener;
    if-eqz v2, :cond_2

    .line 1708
    invoke-interface {v2, v0}, Lcom/mediatek/ims/internal/ImsVTProvider$VideoProviderStateListener;->onReceivePauseState(Z)V

    .line 1709
    const-string v3, "ImsVT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[ID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] [notifyVideoPauseStateChange] isVideoStatePause: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1711
    .end local v2    # "listener":Lcom/mediatek/ims/internal/ImsVTProvider$VideoProviderStateListener;
    :cond_2
    goto :goto_1

    .line 1713
    :cond_3
    const-string v1, "ImsVT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] [notifyVideoPauseStateChange] Finish"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1715
    return-void
.end method

.method public notifyWifiUsageChange(J)V
    .locals 3
    .param p1, "usage"    # J

    .line 1719
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [notifyWifiUsageChange] Start, usage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1721
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/internal/ImsVTProvider$VideoProviderStateListener;

    .line 1722
    .local v1, "listener":Lcom/mediatek/ims/internal/ImsVTProvider$VideoProviderStateListener;
    if-eqz v1, :cond_0

    .line 1723
    invoke-interface {v1, p1, p2}, Lcom/mediatek/ims/internal/ImsVTProvider$VideoProviderStateListener;->onReceiveWiFiUsage(J)V

    .line 1725
    .end local v1    # "listener":Lcom/mediatek/ims/internal/ImsVTProvider$VideoProviderStateListener;
    :cond_0
    goto :goto_0

    .line 1727
    :cond_1
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [notifyWifiUsageChange] Finish"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1729
    return-void
.end method

.method public onError()V
    .locals 3

    .line 1659
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onError] Start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleMaErrorProcess()V

    .line 1662
    const/16 v0, 0x1f43

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 1664
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onError] Finish"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    return-void
.end method

.method public onOpenFail()V
    .locals 3

    .line 1679
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onOpenFail] Start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1681
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 1683
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onOpenFail] Finish"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    return-void
.end method

.method public onOpenSuccess()V
    .locals 3

    .line 1670
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onOpenSuccess] Start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1672
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 1674
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onOpenSuccess] Finish"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1675
    return-void
.end method

.method public onReceiveCallSessionEvent(I)V
    .locals 3
    .param p1, "event"    # I

    .line 770
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 771
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 772
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    const/16 v2, 0x2c2

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 773
    return-void
.end method

.method public onRequestCallDataUsage()V
    .locals 2

    .line 732
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 733
    return-void
.end method

.method public onRequestCameraCapabilities()V
    .locals 2

    .line 728
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 729
    return-void
.end method

.method public onResetWrapper()V
    .locals 2

    .line 760
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    const/16 v1, 0x2c0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 761
    return-void
.end method

.method public onSendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 3
    .param p1, "fromProfile"    # Landroid/telecom/VideoProfile;
    .param p2, "toProfile"    # Landroid/telecom/VideoProfile;

    .line 716
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 717
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 718
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 719
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 720
    return-void
.end method

.method public onSendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    .locals 2
    .param p1, "responseProfile"    # Landroid/telecom/VideoProfile;

    .line 723
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 724
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 725
    return-void
.end method

.method public onSetCamera(Ljava/lang/String;)V
    .locals 2
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 696
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 697
    return-void
.end method

.method public onSetDeviceOrientation(I)V
    .locals 3
    .param p1, "rotation"    # I

    .line 708
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 709
    return-void
.end method

.method public onSetDisplaySurface(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    .line 704
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 705
    return-void
.end method

.method public onSetPauseImage(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .line 736
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 737
    return-void
.end method

.method public onSetPreviewSurface(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    .line 700
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 701
    return-void
.end method

.method public onSetUIMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .line 740
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2bd

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 741
    const/high16 v0, 0x10000

    if-ne p1, v0, :cond_0

    .line 742
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsDestroying:Z

    .line 744
    :cond_0
    return-void
.end method

.method public onSetZoom(F)V
    .locals 3
    .param p1, "value"    # F

    .line 712
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 713
    return-void
.end method

.method public onSwitchFeature(IZ)V
    .locals 3
    .param p1, "feature"    # I
    .param p2, "on"    # Z

    .line 747
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 748
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 749
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 750
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    const/16 v2, 0x2be

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 751
    return-void
.end method

.method public onSwitchRoaming(Z)V
    .locals 3
    .param p1, "isRoaming"    # Z

    .line 754
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 755
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 756
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    const/16 v2, 0x2bf

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 757
    return-void
.end method

.method public onUpdateProfile(I)V
    .locals 3
    .param p1, "state"    # I

    .line 764
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 765
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 766
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    const/16 v2, 0x2c1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 767
    return-void
.end method

.method public quitThread()V
    .locals 1

    .line 643
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 644
    return-void
.end method

.method protected reSendLastSessionModify()V
    .locals 3

    .line 1764
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [reSendLastSessionModify] Profile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    invoke-virtual {v2}, Landroid/telecom/VideoProfile;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1767
    const-wide/16 v0, 0x1f4

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1769
    goto :goto_0

    .line 1768
    :catch_0
    move-exception v0

    .line 1771
    :goto_0
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    sget-object v1, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->packFromVdoProfile(Landroid/telecom/VideoProfile;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->nRequestPeerConfig(ILjava/lang/String;)I

    .line 1772
    return-void
.end method

.method public receiveCallSessionEventInternal(I)V
    .locals 3
    .param p1, "event"    # I

    .line 1431
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [receiveCallSessionEventInternal] Start, event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    const/16 v0, 0x84

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1435
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->notifyResume()V

    .line 1436
    nop

    .line 1442
    :goto_0
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [receiveCallSessionEventInternal] Finish"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    return-void
.end method

.method public receiveSessionModifyResponseInternal(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 5
    .param p1, "status"    # I
    .param p2, "requestedProfile"    # Landroid/telecom/VideoProfile;
    .param p3, "responseProfile"    # Landroid/telecom/VideoProfile;

    .line 1100
    invoke-virtual {p0, p1, p2, p3}, Lcom/mediatek/ims/internal/ImsVTProvider;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 1102
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getMaCrash()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1103
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->setState(I)V

    .line 1104
    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->setMaCrash(Z)V

    .line 1107
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDataOff()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 1108
    invoke-virtual {p3}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v0

    .line 1109
    .local v0, "responseState":I
    invoke-static {v0}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v0}, Landroid/telecom/VideoProfile;->isAudioOnly(I)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    sget-object v3, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    iget v4, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSimId:I

    .line 1110
    invoke-virtual {v3, v4}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->isVideoCallOn(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1111
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/internal/ImsVTProvider;->setState(I)V

    goto :goto_0

    .line 1113
    :cond_2
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/internal/ImsVTProvider;->resetState(I)V

    .line 1115
    :goto_0
    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->setDataOff(Z)V

    .line 1118
    .end local v0    # "responseState":I
    :cond_3
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1119
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->setState(I)V

    .line 1120
    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->setRoaming(Z)V

    .line 1123
    :cond_4
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDuringSessionRequest()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1124
    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->setDuringSessionRequest(Z)V

    .line 1128
    :cond_5
    if-ne p1, v2, :cond_7

    .line 1129
    invoke-virtual {p3}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v0

    invoke-static {v0}, Landroid/telecom/VideoProfile;->isAudioOnly(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1130
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/internal/ImsVTProvider;->setIsAudioCall(Z)V

    goto :goto_1

    .line 1132
    :cond_6
    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->setIsAudioCall(Z)V

    .line 1135
    :cond_7
    :goto_1
    return-void
.end method

.method public rejectSessionModifyInternal(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "requestedProfile"    # Landroid/telecom/VideoProfile;
    .param p3, "responseProfile"    # Landroid/telecom/VideoProfile;

    .line 1139
    invoke-virtual {p0, p1, p2, p3}, Lcom/mediatek/ims/internal/ImsVTProvider;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 1140
    return-void
.end method

.method public removeVideoProviderStateListener(Lcom/mediatek/ims/internal/ImsVTProvider$VideoProviderStateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/mediatek/ims/internal/ImsVTProvider$VideoProviderStateListener;

    .line 1691
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1692
    return-void
.end method

.method public requestCallDataUsageInternal()V
    .locals 3

    .line 1184
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onRequestCallDataUsage] Start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitInitComplete()V

    .line 1188
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_0

    .line 1189
    return-void

    .line 1192
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mUsager:Lcom/mediatek/ims/internal/ImsVTUsageManager;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsVTUsageManager;->requestCallDataUsage()Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    move-result-object v0

    .line 1194
    .local v0, "usage":Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;
    if-eqz v0, :cond_1

    .line 1195
    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getLteUsage()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/mediatek/ims/internal/ImsVTProvider;->changeCallDataUsage(J)V

    .line 1196
    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getWifiUsage()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/mediatek/ims/internal/ImsVTProvider;->notifyWifiUsageChange(J)V

    .line 1198
    :cond_1
    return-void
.end method

.method public requestCameraCapabilitiesInternal()V
    .locals 7

    .line 1144
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onRequestCameraCapabilities] Start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitInitComplete()V

    .line 1148
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_0

    .line 1149
    return-void

    .line 1152
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mCameraId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1153
    const-string v0, "ImsVT"

    const-string v1, "onRequestCameraCapabilities: not set camera yet"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    return-void

    .line 1157
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1158
    .local v0, "zoom_max":F
    const/4 v1, 0x0

    .line 1160
    .local v1, "zoom_support":Z
    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    invoke-virtual {v2}, Lcom/mediatek/ims/internal/VTSource;->getCameraCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v2

    .line 1161
    .local v2, "camera_cs":Landroid/hardware/camera2/CameraCharacteristics;
    if-nez v2, :cond_2

    .line 1162
    const-string v3, "ImsVT"

    const-string v4, "onRequestCameraCapabilities: camera_cs null! Use default value."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1164
    :cond_2
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1166
    :goto_0
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v0, v3

    const/4 v4, 0x1

    if-lez v3, :cond_3

    move v3, v4

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    move v1, v3

    .line 1168
    const-string v3, "ImsVT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ID="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] [onRequestCameraCapabilities] Width: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget v6, v6, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->width:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " Height: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget v6, v6, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->height:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " zoom_support: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " zoom_max: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    new-instance v3, Landroid/telecom/VideoProfile$CameraCapabilities;

    iget-object v5, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget v5, v5, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->width:I

    iget-object v6, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mPreviewSize:Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget v6, v6, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->height:I

    invoke-direct {v3, v5, v6, v1, v0}, Landroid/telecom/VideoProfile$CameraCapabilities;-><init>(IIZF)V

    .line 1175
    .local v3, "camCap":Landroid/telecom/VideoProfile$CameraCapabilities;
    invoke-virtual {p0, v3}, Lcom/mediatek/ims/internal/ImsVTProvider;->changeCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;)V

    .line 1177
    iput-boolean v4, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mHasRequestCamCap:Z

    .line 1179
    const-string v4, "ImsVT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ID="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] [onRequestCameraCapabilities] Finish"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    return-void
.end method

.method public resetState(I)V
    .locals 3
    .param p1, "state"    # I

    .line 508
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetState old mState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    .line 512
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetState new mState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    return-void
.end method

.method public resetWrapperInternal()V
    .locals 3

    .line 1402
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onResetWrapper] Start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitInitComplete()V

    .line 1406
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_0

    .line 1407
    return-void

    .line 1410
    :cond_0
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_1

    .line 1411
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->setUIModeInternal(IZ)V

    .line 1414
    :cond_1
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onResetWrapper] Finish"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    return-void
.end method

.method protected sendFgBgSessionModifyRequestInternal(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;IZ)V
    .locals 0
    .param p1, "fromProfile"    # Landroid/telecom/VideoProfile;
    .param p2, "toProfile"    # Landroid/telecom/VideoProfile;
    .param p3, "mode"    # I
    .param p4, "needNotify"    # Z

    .line 1012
    invoke-virtual {p0, p3, p4}, Lcom/mediatek/ims/internal/ImsVTProvider;->setUIModeInternal(IZ)V

    .line 1013
    return-void
.end method

.method public sendSessionModifyRequestByImsInternal(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 9
    .param p1, "fromProfile"    # Landroid/telecom/VideoProfile;
    .param p2, "toProfile"    # Landroid/telecom/VideoProfile;

    .line 1017
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [sendSessionModifyRequestByImsInternal] Start, fromProfile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1018
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", toProfile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1017
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_0

    .line 1021
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [sendSessionModifyRequestByImsInternal] call end"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    return-void

    .line 1025
    :cond_0
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v0

    .line 1026
    .local v0, "newState":I
    sget-object v1, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v1}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->getImsExtCallUtil()Lcom/mediatek/ims/plugin/impl/ImsCallPluginBase;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mediatek/ims/plugin/impl/ImsCallPluginBase;->getRealRequest(I)I

    move-result v1

    .line 1028
    .local v1, "realNewState":I
    new-instance v2, Landroid/telecom/VideoProfile;

    .line 1030
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getQuality()I

    move-result v3

    invoke-direct {v2, v1, v3}, Landroid/telecom/VideoProfile;-><init>(II)V

    .line 1032
    .local v2, "newToProfile":Landroid/telecom/VideoProfile;
    const/4 v3, 0x1

    invoke-virtual {p0, v3, p1, v2}, Lcom/mediatek/ims/internal/ImsVTProvider;->doSessionModifyDecision(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)I

    move-result v4

    .line 1034
    .local v4, "decision":I
    const/4 v5, 0x2

    if-ne v5, v4, :cond_1

    .line 1036
    new-instance v6, Landroid/telecom/VideoProfile;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v5}, Landroid/telecom/VideoProfile;-><init>(II)V

    move-object v5, v6

    .line 1038
    .local v5, "audioResponseProfile":Landroid/telecom/VideoProfile;
    iget v6, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    sget-object v8, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v8, v5}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->packFromVdoProfile(Landroid/telecom/VideoProfile;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/mediatek/ims/internal/ImsVTProvider;->nResponseLocalConfig(ILjava/lang/String;)I

    .line 1039
    invoke-virtual {p0, v7}, Lcom/mediatek/ims/internal/ImsVTProvider;->setDuringSessionRemoteRequest(Z)V

    .line 1041
    invoke-virtual {p0, v3}, Lcom/mediatek/ims/internal/ImsVTProvider;->setDataOff(Z)V

    .line 1042
    iput-object v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    .line 1043
    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    sget-object v6, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v6, v2}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->packFromVdoProfile(Landroid/telecom/VideoProfile;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/mediatek/ims/internal/ImsVTProvider;->nRequestPeerConfig(ILjava/lang/String;)I

    .line 1045
    .end local v5    # "audioResponseProfile":Landroid/telecom/VideoProfile;
    goto :goto_0

    :cond_1
    const/4 v5, 0x3

    if-ne v5, v4, :cond_2

    .line 1047
    const-string v3, "ImsVT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ID="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] [sendSessionModifyRequestByImsInternal] skip"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1049
    :cond_2
    if-nez v4, :cond_3

    .line 1051
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitSessionOperationComplete()V

    .line 1053
    invoke-virtual {p0, v3}, Lcom/mediatek/ims/internal/ImsVTProvider;->setDataOff(Z)V

    .line 1054
    iput-object v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    .line 1055
    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    sget-object v5, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v5, v2}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->packFromVdoProfile(Landroid/telecom/VideoProfile;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->nRequestPeerConfig(ILjava/lang/String;)I

    goto :goto_0

    .line 1059
    :cond_3
    const-string v3, "ImsVT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ID="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] [sendSessionModifyRequestByImsInternal] should not in this case"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    :goto_0
    const-string v3, "ImsVT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ID="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] [onSendSessionModifyRequest] Finish"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    return-void
.end method

.method public sendSessionModifyRequestInternal(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 6
    .param p1, "fromProfile"    # Landroid/telecom/VideoProfile;
    .param p2, "toProfile"    # Landroid/telecom/VideoProfile;

    .line 933
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->getImsExtCallUtil()Lcom/mediatek/ims/plugin/impl/ImsCallPluginBase;

    move-result-object v0

    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/plugin/impl/ImsCallPluginBase;->isImsFwkRequest(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 935
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onSendSessionModifyRequest] requst from IMS FWK, swith handle function"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/ims/internal/ImsVTProvider;->sendSessionModifyRequestByImsInternal(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 938
    return-void

    .line 941
    :cond_0
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onSendSessionModifyRequest] Start, fromProfile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 942
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", toProfile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 941
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitInitComplete()V

    .line 946
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_1

    .line 947
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onSendSessionModifyRequest] call end"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    return-void

    .line 951
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/ims/internal/ImsVTProvider;->getSessionModifyAction(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)I

    move-result v0

    .line 952
    .local v0, "mode":I
    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    .line 953
    invoke-virtual {p0, p1, p2, v0, v2}, Lcom/mediatek/ims/internal/ImsVTProvider;->sendFgBgSessionModifyRequestInternal(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;IZ)V

    .line 954
    return-void

    .line 958
    :cond_2
    sget-object v1, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSimId:I

    invoke-virtual {v1, v3}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->isVideoCallOn(I)Z

    move-result v1

    const/4 v3, 0x4

    const/4 v4, 0x2

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    .line 959
    invoke-virtual {p0, v1, v2}, Lcom/mediatek/ims/internal/ImsVTProvider;->hasState(II)Z

    move-result v1

    if-nez v1, :cond_3

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    .line 960
    invoke-virtual {p0, v1, v4}, Lcom/mediatek/ims/internal/ImsVTProvider;->hasState(II)Z

    move-result v1

    if-nez v1, :cond_3

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    .line 961
    invoke-virtual {p0, v1, v3}, Lcom/mediatek/ims/internal/ImsVTProvider;->hasState(II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 962
    :cond_3
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v1

    invoke-static {v1}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 964
    invoke-virtual {p0, v4, p2, p1}, Lcom/mediatek/ims/internal/ImsVTProvider;->rejectSessionModifyInternal(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 968
    const-string v1, "ImsVT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] [onSendSessionModifyRequest] Reject it by state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    return-void

    .line 972
    :cond_4
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, p2}, Lcom/mediatek/ims/internal/ImsVTProvider;->doSessionModifyDecision(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)I

    move-result v1

    .line 974
    .local v1, "decision":I
    if-ne v2, v1, :cond_5

    .line 976
    invoke-virtual {p0, v4, p2, p1}, Lcom/mediatek/ims/internal/ImsVTProvider;->rejectSessionModifyInternal(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    goto :goto_0

    .line 981
    :cond_5
    if-ne v3, v1, :cond_6

    .line 983
    const-string v3, "ImsVT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[ID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] [onSendSessionModifyRequest] send request immediately"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/internal/ImsVTProvider;->setDuringSessionRequest(Z)V

    .line 985
    iput-object p2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    .line 986
    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    sget-object v3, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v3, p2}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->packFromVdoProfile(Landroid/telecom/VideoProfile;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/ims/internal/ImsVTProvider;->nRequestPeerConfig(ILjava/lang/String;)I

    goto :goto_0

    .line 988
    :cond_6
    if-nez v1, :cond_7

    .line 990
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitSessionOperationComplete()V

    .line 992
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/internal/ImsVTProvider;->setDuringSessionRequest(Z)V

    .line 993
    iput-object p2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    .line 994
    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    sget-object v3, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v3, p2}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->packFromVdoProfile(Landroid/telecom/VideoProfile;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/ims/internal/ImsVTProvider;->nRequestPeerConfig(ILjava/lang/String;)I

    goto :goto_0

    .line 998
    :cond_7
    const-string v2, "ImsVT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[ID="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] [onSendSessionModifyRequest] should not in this case"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    invoke-virtual {p0, v4, p2, p1}, Lcom/mediatek/ims/internal/ImsVTProvider;->rejectSessionModifyInternal(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 1007
    :goto_0
    const-string v2, "ImsVT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] [onSendSessionModifyRequest] Finish"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    return-void
.end method

.method public sendSessionModifyResponseInternal(Landroid/telecom/VideoProfile;)V
    .locals 4
    .param p1, "responseProfile"    # Landroid/telecom/VideoProfile;

    .line 1068
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onSendSessionModifyResponse] Start, responseProfile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1069
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1068
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitInitComplete()V

    .line 1073
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_0

    .line 1074
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onSendSessionModifyResponse] call end"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    return-void

    .line 1078
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getDuringSessionRemoteRequest()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1079
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    sget-object v2, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v2, p1}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->packFromVdoProfile(Landroid/telecom/VideoProfile;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/ims/internal/ImsVTProvider;->nResponseLocalConfig(ILjava/lang/String;)I

    .line 1080
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v0

    invoke-static {v0}, Landroid/telecom/VideoProfile;->isAudioOnly(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1081
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->setIsAudioCall(Z)V

    goto :goto_0

    .line 1083
    :cond_1
    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->setIsAudioCall(Z)V

    goto :goto_0

    .line 1090
    :cond_2
    const-string v0, "ImsVT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] [onSendSessionModifyResponse] Already response, skip it"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    :goto_0
    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->setDuringSessionRemoteRequest(Z)V

    .line 1095
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onSendSessionModifyResponse] Finish"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    return-void
.end method

.method public setCameraInternal(Ljava/lang/String;)V
    .locals 4
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 777
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onSetCamera] id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitInitComplete()V

    .line 781
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_0

    .line 782
    return-void

    .line 786
    :cond_0
    iget-boolean v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsDestroying:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 787
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onSetCamera] UI mode is destroying"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    return-void

    .line 791
    :cond_1
    const/4 v0, 0x0

    .line 793
    .local v0, "count":I
    if-nez p1, :cond_2

    .line 794
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mHasRequestCamCap:Z

    .line 797
    :cond_2
    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 798
    const-string v1, "ImsVT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] [onSetCamera] onSetCamera, not set camera when in BG, only save id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 801
    :cond_3
    if-eqz p1, :cond_8

    .line 805
    :goto_0
    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mUplinkState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 807
    const/16 v1, 0xa

    if-ge v0, v1, :cond_4

    .line 808
    const-string v1, "ImsVT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] [onSetCamera] onSetCamera, Call hold or held, wait and retry"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    const-wide/16 v1, 0xc8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 837
    goto :goto_1

    .line 836
    :catch_0
    move-exception v1

    .line 838
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 813
    :cond_4
    const-string v1, "ImsVT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] [onSetCamera] onSetCamera, Call hold or held, ignore setCamera"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    const/16 v1, 0x1f46

    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 815
    return-void

    .line 818
    :cond_5
    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mUplinkState:I

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mUplinkState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_7

    :cond_6
    if-lez v0, :cond_7

    .line 820
    const-string v1, "ImsVT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] [onSetCamera] onSetCamera, recording stopped"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    return-void

    .line 825
    :cond_7
    sget-object v1, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->updateCameraUsage(I)V

    .line 828
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    invoke-virtual {v1, p1}, Lcom/mediatek/ims/internal/VTSource;->open(Ljava/lang/String;)V

    .line 829
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    invoke-virtual {v1}, Lcom/mediatek/ims/internal/VTSource;->showMe()V

    .line 830
    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/mediatek/ims/internal/ImsVTProvider;->nSetCamera(II)I

    .line 831
    goto :goto_2

    .line 842
    :cond_8
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    invoke-virtual {v1}, Lcom/mediatek/ims/internal/VTSource;->hideMe()V

    .line 843
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    invoke-virtual {v1}, Lcom/mediatek/ims/internal/VTSource;->close()V

    .line 846
    :goto_2
    iput-object p1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mCameraId:Ljava/lang/String;

    .line 848
    const-string v1, "ImsVT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] [onSetCamera] Finish"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    return-void
.end method

.method public setDataOff(Z)V
    .locals 3
    .param p1, "b"    # Z

    .line 552
    iput-boolean p1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsDataOff:Z

    .line 553
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDataOff : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsDataOff:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    return-void
.end method

.method public setDeviceOrientationInternal(I)V
    .locals 4
    .param p1, "rotation"    # I

    .line 890
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onSetDeviceOrientation] Start, rotation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_0

    .line 893
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onSetDeviceOrientation] call end"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    return-void

    .line 897
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitInitComplete()V

    .line 899
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mOrientation:I

    if-eq v0, p1, :cond_1

    .line 901
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onSetDeviceOrientation] device orientation change from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    iput p1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mOrientation:I

    .line 905
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mOrientationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 907
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mProviderHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mOrientationRunnable:Ljava/lang/Runnable;

    const-string v2, "persist.vendor.vt.rotate_delay"

    const/16 v3, 0x1f4

    .line 908
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    int-to-long v2, v2

    .line 907
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 911
    :cond_1
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onSetDeviceOrientation] Finish"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    return-void
.end method

.method public setDisplaySurfaceInternal(Landroid/view/Surface;)V
    .locals 3
    .param p1, "surface"    # Landroid/view/Surface;

    .line 873
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onSetDisplaySurface] Start, surface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitInitComplete()V

    .line 877
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_0

    .line 878
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onSetDisplaySurface] call end"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    return-void

    .line 882
    :cond_0
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-static {v0, p1}, Lcom/mediatek/ims/internal/ImsVTProvider;->nSetDisplaySurface(ILandroid/view/Surface;)I

    .line 884
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onSetDisplaySurface] Finish"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    return-void
.end method

.method public setDuringSessionRemoteRequest(Z)V
    .locals 4
    .param p1, "b"    # Z

    .line 529
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSessionOperationFlagLock:Ljava/lang/Object;

    monitor-enter v0

    .line 530
    :try_start_0
    iput-boolean p1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDuringSessionRemoteRequestOperation:Z

    .line 531
    const-string v1, "ImsVT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDuringSessionRemoteRequest : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDuringSessionRemoteRequestOperation:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    monitor-exit v0

    .line 533
    return-void

    .line 532
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setDuringSessionRequest(Z)V
    .locals 4
    .param p1, "b"    # Z

    .line 517
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSessionOperationFlagLock:Ljava/lang/Object;

    monitor-enter v0

    .line 518
    :try_start_0
    iput-boolean p1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDuringSessionRequestOperation:Z

    .line 519
    const-string v1, "ImsVT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDuringSessionRequest : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDuringSessionRequestOperation:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    monitor-exit v0

    .line 521
    return-void

    .line 520
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setId(I)V
    .locals 3
    .param p1, "id"    # I

    .line 468
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setId id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    iput p1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    .line 471
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mUsager:Lcom/mediatek/ims/internal/ImsVTUsageManager;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/internal/ImsVTUsageManager;->setId(I)V

    .line 473
    sget v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDefaultId:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_0

    .line 474
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    sput v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDefaultId:I

    .line 476
    :cond_0
    return-void
.end method

.method public setIsAudioCall(Z)V
    .locals 3
    .param p1, "result"    # Z

    .line 574
    iput-boolean p1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsAudioCall:Z

    .line 575
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIsAudioCall : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsAudioCall:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    return-void
.end method

.method public setMaCrash(Z)V
    .locals 3
    .param p1, "b"    # Z

    .line 541
    iput-boolean p1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsMaCrashed:Z

    .line 542
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMaCrash : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsMaCrashed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    return-void
.end method

.method public setPauseImageInternal(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .line 1202
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onSetPauseImage] Start, uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitInitComplete()V

    .line 1206
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_0

    .line 1207
    return-void

    .line 1210
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/internal/VTSource;->setReplacePicture(Landroid/net/Uri;)V

    .line 1212
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onSetPauseImage] Finish"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    return-void
.end method

.method public setPreviewSurfaceInternal(Landroid/view/Surface;)V
    .locals 3
    .param p1, "surface"    # Landroid/view/Surface;

    .line 854
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onSetPreviewSurface] Start, surface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitInitComplete()V

    .line 858
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_0

    .line 859
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onSetPreviewSurface] call end"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    return-void

    .line 863
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/internal/VTSource;->setPreviewSurface(Landroid/view/Surface;)V

    .line 865
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-static {v0, p1}, Lcom/mediatek/ims/internal/ImsVTProvider;->nSetPreviewSurface(ILandroid/view/Surface;)I

    .line 867
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onSetPreviewSurface] Finish"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    return-void
.end method

.method public setRoaming(Z)V
    .locals 3
    .param p1, "b"    # Z

    .line 563
    iput-boolean p1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsRoaming:Z

    .line 564
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRoaming : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsRoaming:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    return-void
.end method

.method public setSimId(I)V
    .locals 3
    .param p1, "simid"    # I

    .line 483
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSimId mSimId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    iput p1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSimId:I

    .line 486
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mUsager:Lcom/mediatek/ims/internal/ImsVTUsageManager;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/internal/ImsVTUsageManager;->setSimId(I)V

    .line 487
    return-void
.end method

.method public setState(I)V
    .locals 3
    .param p1, "state"    # I

    .line 498
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    .line 499
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setState mState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    return-void
.end method

.method public setUIModeInternal(IZ)V
    .locals 4
    .param p1, "mode"    # I
    .param p2, "needNotify"    # Z

    .line 1219
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onSetUIMode] Start, mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_0

    .line 1222
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onSetUIMode] call end"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    return-void

    .line 1226
    :cond_0
    const/4 v0, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v0, :cond_7

    if-eq p1, v1, :cond_5

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 1250
    :pswitch_0
    iget-boolean v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsDuringResetMode:Z

    if-eqz v0, :cond_1

    .line 1251
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onSetUIMode] reset mode (voice call) should not recv BG, skip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    goto/16 :goto_1

    .line 1255
    :cond_1
    iput p1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    .line 1256
    if-eqz p2, :cond_2

    .line 1257
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->notifyVideoPauseStateChange()V

    .line 1261
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/VTSource;->hideMe()V

    .line 1262
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/VTSource;->close()V

    .line 1264
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-static {v0, p1}, Lcom/mediatek/ims/internal/ImsVTProvider;->nSetUIMode(II)I

    .line 1265
    goto :goto_1

    .line 1228
    :pswitch_1
    iput p1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    .line 1229
    if-eqz p2, :cond_3

    .line 1230
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->notifyVideoPauseStateChange()V

    .line 1233
    :cond_3
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mCameraId:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 1235
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->updateCameraUsage(I)V

    .line 1238
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/VTSource;->open(Ljava/lang/String;)V

    .line 1239
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/VTSource;->showMe()V

    .line 1240
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mCameraId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->nSetCamera(II)I

    goto :goto_0

    .line 1242
    :cond_4
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/VTSource;->hideMe()V

    .line 1243
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/VTSource;->close()V

    .line 1246
    :goto_0
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-static {v0, p1}, Lcom/mediatek/ims/internal/ImsVTProvider;->nSetUIMode(II)I

    .line 1247
    goto :goto_1

    .line 1299
    :cond_5
    iget-boolean v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mInitComplete:Z

    if-ne v3, v0, :cond_6

    .line 1300
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->requestCallDataUsageInternal()V

    .line 1303
    :cond_6
    iput p1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    .line 1304
    iput-boolean v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsDestroying:Z

    .line 1305
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-static {v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->nFinalization(I)I

    .line 1307
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->quitThread()V

    .line 1308
    goto :goto_1

    .line 1269
    :cond_7
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    if-eq v0, v1, :cond_8

    .line 1270
    iput v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    .line 1273
    :cond_8
    iput-boolean v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mIsDuringResetMode:Z

    .line 1274
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mediatek/ims/internal/ImsVTProvider$3;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/internal/ImsVTProvider$3;-><init>(Lcom/mediatek/ims/internal/ImsVTProvider;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1287
    .local v0, "resetModeRecoverThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1289
    if-eqz p2, :cond_9

    .line 1290
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->notifyVideoPauseStateChange()V

    .line 1314
    .end local v0    # "resetModeRecoverThread":Ljava/lang/Thread;
    :cond_9
    :goto_1
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onSetUIMode] Finish"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setZoomInternal(F)V
    .locals 3
    .param p1, "value"    # F

    .line 917
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onSetZoom] Start, value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitInitComplete()V

    .line 921
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_0

    .line 922
    return-void

    .line 925
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/internal/VTSource;->setZoom(F)V

    .line 927
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onSetZoom] Finish"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    return-void
.end method

.method public switchFeatureInternal(IZ)V
    .locals 3
    .param p1, "feature"    # I
    .param p2, "on"    # Z

    .line 1319
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onSwitchFeature] Start, feature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", on: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitInitComplete()V

    .line 1323
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_0

    .line 1324
    return-void

    .line 1327
    :cond_0
    if-eqz p2, :cond_1

    .line 1328
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->nSwitchFeature(III)I

    .line 1329
    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->resetState(I)V

    goto :goto_0

    .line 1332
    :cond_1
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->nSwitchFeature(III)I

    .line 1335
    :goto_0
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onSwitchFeature] Finish"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    return-void
.end method

.method public switchRoamingInternal(Z)V
    .locals 7
    .param p1, "isRoaming"    # Z

    .line 1340
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onSwitchRoaming] Start, phoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", on: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitInitComplete()V

    .line 1345
    const/4 v0, 0x2

    if-nez p1, :cond_0

    .line 1347
    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->resetState(I)V

    goto :goto_0

    .line 1351
    :cond_0
    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v2, 0x10000

    if-ne v1, v2, :cond_1

    .line 1352
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onSwitchRoaming] call end"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    return-void

    .line 1357
    :cond_1
    new-instance v1, Landroid/telecom/VideoProfile;

    const/4 v2, 0x3

    invoke-direct {v1, v2, v0}, Landroid/telecom/VideoProfile;-><init>(II)V

    .line 1358
    .local v1, "currentProfile":Landroid/telecom/VideoProfile;
    new-instance v3, Landroid/telecom/VideoProfile;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0}, Landroid/telecom/VideoProfile;-><init>(II)V

    .line 1360
    .local v3, "reqestProfile":Landroid/telecom/VideoProfile;
    invoke-virtual {p0, v0, v1, v3}, Lcom/mediatek/ims/internal/ImsVTProvider;->doSessionModifyDecision(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)I

    move-result v4

    .line 1362
    .local v4, "decision":I
    const/4 v5, 0x1

    if-ne v5, v4, :cond_2

    .line 1364
    const-string v0, "ImsVT"

    const-string v2, "onSwitchRoaming() : should not in this case"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    return-void

    .line 1367
    :cond_2
    if-ne v0, v4, :cond_3

    .line 1369
    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    iget-object v6, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    invoke-virtual {p0, v0, v2, v6}, Lcom/mediatek/ims/internal/ImsVTProvider;->receiveSessionModifyResponseInternal(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 1374
    invoke-virtual {p0, v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->setRoaming(Z)V

    .line 1375
    iput-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    .line 1376
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    sget-object v2, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v2, v3}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->packFromVdoProfile(Landroid/telecom/VideoProfile;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/ims/internal/ImsVTProvider;->nRequestPeerConfig(ILjava/lang/String;)I

    .line 1378
    return-void

    .line 1380
    :cond_3
    if-ne v2, v4, :cond_4

    .line 1382
    return-void

    .line 1384
    :cond_4
    if-nez v4, :cond_5

    .line 1386
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->waitSessionOperationComplete()V

    .line 1388
    invoke-virtual {p0, v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->setRoaming(Z)V

    .line 1389
    iput-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mLastRequestVideoProfile:Landroid/telecom/VideoProfile;

    .line 1390
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    sget-object v2, Lcom/mediatek/ims/internal/ImsVTProvider;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v2, v3}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->packFromVdoProfile(Landroid/telecom/VideoProfile;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/ims/internal/ImsVTProvider;->nRequestPeerConfig(ILjava/lang/String;)I

    .line 1392
    invoke-virtual {p0, v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->setRoaming(Z)V

    .line 1396
    .end local v1    # "currentProfile":Landroid/telecom/VideoProfile;
    .end local v3    # "reqestProfile":Landroid/telecom/VideoProfile;
    .end local v4    # "decision":I
    :cond_5
    :goto_0
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onSwitchRoaming] Finish"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    return-void
.end method

.method public updateProfileInternal(I)V
    .locals 4
    .param p1, "state"    # I

    .line 1420
    const-string v0, "ImsVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [updateCurrentProfile] Start, state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    new-instance v0, Landroid/telecom/VideoProfile;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Landroid/telecom/VideoProfile;-><init>(II)V

    .line 1423
    .local v0, "newVideoprofile":Landroid/telecom/VideoProfile;
    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mCurrentProfile:Landroid/telecom/VideoProfile;

    .line 1425
    const-string v1, "ImsVT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] [updateCurrentProfile] Finish"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    return-void
.end method

.method public waitInitComplete()V
    .locals 2

    .line 656
    :goto_0
    iget-boolean v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mInitComplete:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v1, 0x10000

    if-eq v0, v1, :cond_0

    .line 658
    :try_start_0
    const-string v0, "ImsVT"

    const-string v1, "Wait for initialization complete!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 660
    :catch_0
    move-exception v0

    .line 661
    :goto_1
    goto :goto_0

    .line 663
    :cond_0
    return-void
.end method

.method public waitSessionOperationComplete()V
    .locals 2

    .line 633
    :goto_0
    iget-boolean v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDuringSessionRequestOperation:Z

    const/4 v1, 0x1

    if-eq v1, v0, :cond_1

    iget-boolean v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDuringSessionRemoteRequestOperation:Z

    if-ne v1, v0, :cond_0

    goto :goto_1

    .line 640
    :cond_0
    return-void

    .line 635
    :cond_1
    :goto_1
    :try_start_0
    const-string v0, "ImsVT"

    const-string v1, "Wait for Session operation complete!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 637
    :catch_0
    move-exception v0

    .line 638
    :goto_2
    goto :goto_0
.end method
