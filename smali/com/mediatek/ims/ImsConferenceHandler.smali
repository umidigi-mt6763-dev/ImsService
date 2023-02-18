.class public Lcom/mediatek/ims/ImsConferenceHandler;
.super Lcom/mediatek/ims/DefaultConferenceHandler;
.source "ImsConferenceHandler.java"


# static fields
.field private static final ANONYMOUS_URI:Ljava/lang/String; = "sip:anonymous@anonymous.invalid"

.field private static final CEP_TIMEOUT:I = 0x1388

.field private static final CONFERENCE_STATE_ACTIVE:I = 0x1

.field private static final CONFERENCE_STATE_CLOSED:I = 0x0

.field private static final CONF_HOST:Ljava/lang/String; = "host"

.field private static final DBG:Z = true

.field private static final EVENT_CLOSE_CONFERENCE:I = 0x1

.field private static final EVENT_HANDLE_CACHED_CONFERENCE_DATA:I = 0x2

.field private static final EVENT_TRY_UPDATE_WITH_LOCAL_CACHE:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "ImsConferenceHandler"

.field private static final PROP_FORCE_DEBUG_KEY:Ljava/lang/String; = "persist.vendor.log.tel_dbg"

.field private static final SENLOG:Z

.field private static final TELDBG:Z

.field private static final USER_ENTITY:Ljava/lang/String; = "user-entity"

.field private static final VDBG:Z = false

.field private static mConfHdler:Lcom/mediatek/ims/DefaultConferenceHandler;

.field private static mListener:Lcom/mediatek/ims/DefaultConferenceHandler$Listener;


# instance fields
.field private mAddingParticipant:Ljava/lang/String;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCachedConferenceData:Ljava/lang/String;

.field private mCepVersion:I

.field private mConfCallId:I

.field private mConfParticipants:Ljava/util/LinkedHashMap;

.field private mConfParticipantsAddr:Ljava/util/LinkedHashMap;

.field private mConfState:I

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHaveUpdateConferenceWithMember:Z

.field private mHostAddr:Ljava/lang/String;

.field private mIsCepNotified:Z

.field private mIsFirstCep:Z

.field private mLatestRemovedParticipant:Ljava/lang/String;

.field private mLocalParticipants:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneId:I

.field private mRemoveParticipantsByUserEntity:Z

.field private mRemovingParticipant:Ljava/lang/String;

.field private mRestoreParticipantsAddr:Z

.field private mUnknowParticipants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 91
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/ims/ImsConferenceHandler;->SENLOG:Z

    .line 92
    const-string v0, "persist.vendor.log.tel_dbg"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    nop

    :cond_0
    sput-boolean v1, Lcom/mediatek/ims/ImsConferenceHandler;->TELDBG:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 175
    invoke-direct {p0}, Lcom/mediatek/ims/DefaultConferenceHandler;-><init>()V

    .line 104
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfParticipants:Ljava/util/LinkedHashMap;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mUnknowParticipants:Ljava/util/List;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mLocalParticipants:Ljava/util/ArrayList;

    .line 113
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfCallId:I

    .line 114
    iput v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mCepVersion:I

    .line 115
    iput v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mPhoneId:I

    .line 116
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfState:I

    .line 117
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mIsFirstCep:Z

    .line 118
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mHostAddr:Ljava/lang/String;

    .line 119
    iput-object v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mCachedConferenceData:Ljava/lang/String;

    .line 121
    iput-boolean v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mIsCepNotified:Z

    .line 122
    iput-boolean v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mRestoreParticipantsAddr:Z

    .line 123
    iput-boolean v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mRemoveParticipantsByUserEntity:Z

    .line 124
    iput-boolean v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mHaveUpdateConferenceWithMember:Z

    .line 135
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfParticipantsAddr:Ljava/util/LinkedHashMap;

    .line 137
    new-instance v0, Lcom/mediatek/ims/ImsConferenceHandler$1;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/ImsConferenceHandler$1;-><init>(Lcom/mediatek/ims/ImsConferenceHandler;)V

    iput-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mHandler:Landroid/os/Handler;

    .line 395
    new-instance v0, Lcom/mediatek/ims/ImsConferenceHandler$2;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/ImsConferenceHandler$2;-><init>(Lcom/mediatek/ims/ImsConferenceHandler;)V

    iput-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 176
    const-string v0, "ImsConferenceHandler"

    const-string v1, "ImsConferenceHandler()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/ims/ImsConferenceHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsConferenceHandler;

    .line 83
    iget-boolean v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mIsCepNotified:Z

    return v0
.end method

.method static synthetic access$002(Lcom/mediatek/ims/ImsConferenceHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsConferenceHandler;
    .param p1, "x1"    # Z

    .line 83
    iput-boolean p1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mIsCepNotified:Z

    return p1
.end method

.method static synthetic access$100(Lcom/mediatek/ims/ImsConferenceHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsConferenceHandler;

    .line 83
    invoke-direct {p0}, Lcom/mediatek/ims/ImsConferenceHandler;->updateConferenceStateWithLocalCache()V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/ims/ImsConferenceHandler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsConferenceHandler;
    .param p1, "x1"    # I

    .line 83
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsConferenceHandler;->closeConferenceInternal(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/ims/ImsConferenceHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsConferenceHandler;

    .line 83
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mCachedConferenceData:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/mediatek/ims/ImsConferenceHandler;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsConferenceHandler;
    .param p1, "x1"    # Ljava/lang/String;

    .line 83
    iput-object p1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mCachedConferenceData:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/mediatek/ims/ImsConferenceHandler;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsConferenceHandler;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ImsConferenceHandler;->handleImsConfCallMessage(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/ims/ImsConferenceHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsConferenceHandler;

    .line 83
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mAddingParticipant:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/ims/ImsConferenceHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsConferenceHandler;

    .line 83
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mRemovingParticipant:Ljava/lang/String;

    return-object v0
.end method

.method private closeConferenceInternal(I)V
    .locals 4
    .param p1, "callId"    # I

    .line 211
    const-string v0, "ImsConferenceHandler"

    const-string v1, "closeConferenceInternal()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfState:I

    .line 213
    const/4 v1, 0x0

    sput-object v1, Lcom/mediatek/ims/ImsConferenceHandler;->mListener:Lcom/mediatek/ims/DefaultConferenceHandler$Listener;

    .line 214
    iget-object v2, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 215
    iget-object v2, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 216
    iput-object v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mContext:Landroid/content/Context;

    .line 219
    :cond_0
    iget-object v2, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mLocalParticipants:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 220
    iput-object v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mAddingParticipant:Ljava/lang/String;

    .line 221
    iput-object v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mRemovingParticipant:Ljava/lang/String;

    .line 222
    const/4 v2, -0x1

    iput v2, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfCallId:I

    .line 223
    iput v2, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mCepVersion:I

    .line 224
    iput v2, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mPhoneId:I

    .line 225
    iput-object v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mHostAddr:Ljava/lang/String;

    .line 226
    iget-object v2, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfParticipants:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->clear()V

    .line 227
    iget-object v2, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfParticipantsAddr:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->clear()V

    .line 228
    iget-object v2, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mUnknowParticipants:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 229
    iput-boolean v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mIsCepNotified:Z

    .line 230
    iget-object v2, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 231
    iput-object v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mLatestRemovedParticipant:Ljava/lang/String;

    .line 232
    iput-boolean v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mHaveUpdateConferenceWithMember:Z

    .line 233
    iput-object v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mCachedConferenceData:Ljava/lang/String;

    .line 234
    return-void
.end method

.method private createFakeInfo(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .param p1, "addr"    # Ljava/lang/String;

    .line 362
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 363
    .local v0, "userInfo":Landroid/os/Bundle;
    const-string v1, "user"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const-string v1, "display-text"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    const-string v1, "endpoint"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const-string v1, "status"

    const-string v2, "connected"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    return-object v0
.end method

.method private fullUpdateParticipants(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;",
            ">;)V"
        }
    .end annotation

    .line 451
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;>;"
    const-string v0, "ImsConferenceHandler"

    const-string v1, "reset all users as participants"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mUnknowParticipants:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 453
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfParticipants:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 455
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;

    .line 456
    .local v1, "user":Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;
    invoke-virtual {v1}, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;->getEntity()Ljava/lang/String;

    move-result-object v2

    .line 457
    .local v2, "entity":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsConferenceHandler;->getUserNameFromSipTelUriString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 458
    .local v3, "userAddr":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsConferenceHandler;->packUserInfo(Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;)Landroid/os/Bundle;

    move-result-object v4

    .line 459
    .local v4, "userInfo":Landroid/os/Bundle;
    const-string v5, "ImsConferenceHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handle user: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsConferenceHandler;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " addr: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    invoke-direct {p0, v3}, Lcom/mediatek/ims/ImsConferenceHandler;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 459
    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 466
    :cond_0
    iget-object v5, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfParticipants:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v1    # "user":Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;
    .end local v2    # "entity":Ljava/lang/String;
    .end local v3    # "userAddr":Ljava/lang/String;
    .end local v4    # "userInfo":Landroid/os/Bundle;
    goto :goto_2

    .line 463
    .restart local v1    # "user":Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;
    .restart local v2    # "entity":Ljava/lang/String;
    .restart local v3    # "userAddr":Ljava/lang/String;
    .restart local v4    # "userInfo":Landroid/os/Bundle;
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mUnknowParticipants:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    const-string v5, "ImsConferenceHandler"

    const-string v6, "add unknow participants"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    .end local v1    # "user":Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;
    .end local v2    # "entity":Ljava/lang/String;
    .end local v3    # "userAddr":Ljava/lang/String;
    .end local v4    # "userInfo":Landroid/os/Bundle;
    :goto_2
    goto :goto_0

    .line 469
    :cond_2
    return-void
.end method

.method private getBooleanFromCarrierConfig(Ljava/lang/String;)Z
    .locals 7
    .param p1, "key"    # Ljava/lang/String;

    .line 797
    iget v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mPhoneId:I

    invoke-static {v0}, Lcom/mediatek/ims/common/SubscriptionManagerHelper;->getSubIdUsingPhoneId(I)I

    move-result v0

    .line 798
    .local v0, "subId":I
    iget-object v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mContext:Landroid/content/Context;

    const-string v2, "carrier_config"

    .line 799
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    .line 800
    .local v1, "configMgr":Landroid/telephony/CarrierConfigManager;
    nop

    .line 801
    invoke-virtual {v1, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 802
    .local v2, "carrierConfig":Landroid/os/PersistableBundle;
    invoke-virtual {v2, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 803
    .local v3, "result":Z
    const-string v4, "ImsConferenceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getBooleanFromCarrierConfig() key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    return v3
.end method

.method public static getInstance()Lcom/mediatek/ims/DefaultConferenceHandler;
    .locals 1

    .line 165
    sget-object v0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfHdler:Lcom/mediatek/ims/DefaultConferenceHandler;

    if-nez v0, :cond_1

    .line 166
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMdAutoSetupIms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    new-instance v0, Lcom/mediatek/ims/DefaultConferenceHandler;

    invoke-direct {v0}, Lcom/mediatek/ims/DefaultConferenceHandler;-><init>()V

    sput-object v0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfHdler:Lcom/mediatek/ims/DefaultConferenceHandler;

    goto :goto_0

    .line 169
    :cond_0
    new-instance v0, Lcom/mediatek/ims/ImsConferenceHandler;

    invoke-direct {v0}, Lcom/mediatek/ims/ImsConferenceHandler;-><init>()V

    sput-object v0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfHdler:Lcom/mediatek/ims/DefaultConferenceHandler;

    .line 172
    :cond_1
    :goto_0
    sget-object v0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfHdler:Lcom/mediatek/ims/DefaultConferenceHandler;

    return-object v0
.end method

.method private getPairedAddressFromCache(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "addr"    # Ljava/lang/String;

    .line 620
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mLocalParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 621
    .local v1, "cache":Ljava/lang/String;
    invoke-static {p1, v1}, Landroid/telephony/PhoneNumberUtils;->compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 622
    const-string v0, "ImsConferenceHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPairedAddressFromCache: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfParticipantsAddr:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    return-object v1

    .line 626
    .end local v1    # "cache":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 629
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mLatestRemovedParticipant:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mLatestRemovedParticipant:Ljava/lang/String;

    .line 630
    invoke-static {p1, v0}, Landroid/telephony/PhoneNumberUtils;->compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 631
    const-string v0, "ImsConferenceHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPairedAddressFromLatestRemoved: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mLatestRemovedParticipant:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mLatestRemovedParticipant:Ljava/lang/String;

    return-object v0

    .line 634
    :cond_2
    return-object p1
.end method

.method private getUserNameFromSipTelUriString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "uriString"    # Ljava/lang/String;

    .line 743
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 744
    return-object v0

    .line 747
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 752
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 753
    .local v2, "address":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 754
    return-object v0

    .line 759
    :cond_1
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->getUsernameFromUriNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 760
    .local v3, "userName":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 761
    return-object v0

    .line 766
    :cond_2
    const/16 v0, 0x3b

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 767
    .local v0, "pIndex":I
    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 769
    .local v4, "wIndex":I
    const/4 v5, 0x0

    if-ltz v0, :cond_3

    if-ltz v4, :cond_3

    .line 770
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 771
    :cond_3
    if-ltz v0, :cond_4

    .line 772
    invoke-virtual {v3, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 773
    :cond_4
    if-ltz v4, :cond_5

    .line 774
    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 776
    :cond_5
    return-object v3
.end method

.method private handleImsConfCallMessage(ILjava/lang/String;)V
    .locals 9
    .param p1, "len"    # I
    .param p2, "data"    # Ljava/lang/String;

    .line 536
    iget v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfCallId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 537
    const-string v0, "ImsConferenceHandler"

    const-string v1, "ImsConference is closed"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    return-void

    .line 541
    :cond_0
    if-eqz p2, :cond_b

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_3

    .line 546
    :cond_1
    const-string v0, "ImsConferenceHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleVoLteConfCallMessage, data length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ImsConferenceHandler;->parseXmlPackage(ILjava/lang/String;)Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;

    move-result-object v0

    .line 549
    .local v0, "xmlData":Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;
    if-nez v0, :cond_2

    .line 550
    const-string v1, "ImsConferenceHandler"

    const-string v2, "can\'t create xmlData object, update conf state with local cache"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    invoke-direct {p0}, Lcom/mediatek/ims/ImsConferenceHandler;->updateConferenceStateWithLocalCache()V

    .line 552
    return-void

    .line 556
    :cond_2
    iget-object v2, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mHostAddr:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 557
    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;->getHostInfo()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsConferenceHandler;->getUserNameFromSipTelUriString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mHostAddr:Ljava/lang/String;

    .line 561
    :cond_3
    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;->getCEPState()I

    move-result v2

    .line 562
    .local v2, "cepState":I
    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v2, v3, :cond_4

    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    move v3, v4

    .line 563
    .local v3, "isPartialCEP":Z
    :goto_0
    const-string v5, "ImsConferenceHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isPartialCEP: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;->getVersion()I

    move-result v5

    .line 567
    .local v5, "version":I
    if-nez v3, :cond_6

    .line 568
    iget v6, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mCepVersion:I

    if-le v6, v5, :cond_5

    iget v6, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mCepVersion:I

    if-eq v6, v1, :cond_5

    .line 569
    const-string v1, "ImsConferenceHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "version is less than local version"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mCepVersion:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    return-void

    .line 573
    :cond_5
    iput v5, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mCepVersion:I

    .line 577
    :cond_6
    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;->getUsers()Ljava/util/List;

    move-result-object v6

    .line 580
    .local v6, "users":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;>;"
    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;->getUserCount()I

    move-result v7

    .line 584
    .local v7, "userCount":I
    packed-switch v2, :pswitch_data_0

    .line 592
    if-eq v7, v1, :cond_8

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-ne v7, v1, :cond_7

    goto :goto_1

    .line 589
    :pswitch_0
    invoke-direct {p0, v6}, Lcom/mediatek/ims/ImsConferenceHandler;->partialUpdateParticipants(Ljava/util/List;)V

    .line 590
    goto :goto_2

    .line 586
    :pswitch_1
    invoke-direct {p0, v6}, Lcom/mediatek/ims/ImsConferenceHandler;->fullUpdateParticipants(Ljava/util/List;)V

    .line 587
    goto :goto_2

    .line 595
    :cond_7
    invoke-direct {p0, v6}, Lcom/mediatek/ims/ImsConferenceHandler;->partialUpdateParticipants(Ljava/util/List;)V

    goto :goto_2

    .line 593
    :cond_8
    :goto_1
    invoke-direct {p0, v6}, Lcom/mediatek/ims/ImsConferenceHandler;->fullUpdateParticipants(Ljava/util/List;)V

    .line 602
    :goto_2
    invoke-direct {p0}, Lcom/mediatek/ims/ImsConferenceHandler;->isEmptyConference()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-direct {p0}, Lcom/mediatek/ims/ImsConferenceHandler;->shouldAutoTerminateConf()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mIsFirstCep:Z

    if-nez v1, :cond_9

    iget-boolean v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mHaveUpdateConferenceWithMember:Z

    if-eqz v1, :cond_9

    .line 604
    const-string v1, "ImsConferenceHandler"

    const-string v8, "no participants, terminate the conference"

    invoke-static {v1, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    sget-object v1, Lcom/mediatek/ims/ImsConferenceHandler;->mListener:Lcom/mediatek/ims/DefaultConferenceHandler$Listener;

    if-eqz v1, :cond_9

    .line 606
    sget-object v1, Lcom/mediatek/ims/ImsConferenceHandler;->mListener:Lcom/mediatek/ims/DefaultConferenceHandler$Listener;

    invoke-virtual {v1}, Lcom/mediatek/ims/DefaultConferenceHandler$Listener;->onAutoTerminate()V

    .line 610
    :cond_9
    iget-boolean v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mRestoreParticipantsAddr:Z

    if-eqz v1, :cond_a

    .line 611
    invoke-direct {p0}, Lcom/mediatek/ims/ImsConferenceHandler;->restoreParticipantsAddressByLocalCache()V

    .line 614
    :cond_a
    invoke-direct {p0}, Lcom/mediatek/ims/ImsConferenceHandler;->notifyConfStateUpdate()V

    .line 615
    invoke-direct {p0}, Lcom/mediatek/ims/ImsConferenceHandler;->updateLocalCache()V

    .line 616
    iput-boolean v4, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mIsFirstCep:Z

    .line 617
    return-void

    .line 542
    .end local v0    # "xmlData":Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;
    .end local v2    # "cepState":I
    .end local v3    # "isPartialCEP":Z
    .end local v5    # "version":I
    .end local v6    # "users":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;>;"
    .end local v7    # "userCount":I
    :cond_b
    :goto_3
    const-string v0, "ImsConferenceHandler"

    const-string v1, "Failed to handleImsConfCallMessage due to data is empty"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isEmptyConference()Z
    .locals 7

    .line 505
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mUnknowParticipants:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 507
    .local v0, "userCount":I
    iget-object v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfParticipants:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 508
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 509
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 510
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 511
    .local v3, "userHandle":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 512
    .local v4, "confInfo":Landroid/os/Bundle;
    const-string v5, "status"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 513
    .local v5, "status":Ljava/lang/String;
    const-string v6, "disconnected"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 514
    invoke-direct {p0, v3}, Lcom/mediatek/ims/ImsConferenceHandler;->isSelfAddress(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;"
    .end local v3    # "userHandle":Ljava/lang/String;
    .end local v4    # "confInfo":Landroid/os/Bundle;
    .end local v5    # "status":Ljava/lang/String;
    goto :goto_0

    .line 515
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;"
    .restart local v3    # "userHandle":Ljava/lang/String;
    .restart local v4    # "confInfo":Landroid/os/Bundle;
    .restart local v5    # "status":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 517
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;"
    .end local v3    # "userHandle":Ljava/lang/String;
    .end local v4    # "confInfo":Landroid/os/Bundle;
    .end local v5    # "status":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 519
    :cond_2
    const/4 v2, 0x1

    if-nez v0, :cond_3

    .line 520
    return v2

    .line 522
    :cond_3
    iget-boolean v3, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mHaveUpdateConferenceWithMember:Z

    if-nez v3, :cond_4

    .line 523
    const-string v3, "ImsConferenceHandler"

    const-string v4, "Set mHaveUpdateConferenceWithMember = true"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    iput-boolean v2, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mHaveUpdateConferenceWithMember:Z

    .line 526
    :cond_4
    const/4 v2, 0x0

    return v2
.end method

.method private isSelfAddress(Ljava/lang/String;)Z
    .locals 2
    .param p1, "addr"    # Ljava/lang/String;

    .line 789
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mHostAddr:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/PhoneNumberUtils;->compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 790
    const-string v0, "ImsConferenceHandler"

    const-string v1, "isSelfAddress(): true, meet host info in xml"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    const/4 v0, 0x1

    return v0

    .line 793
    :cond_0
    iget v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mPhoneId:I

    invoke-static {v0}, Lcom/mediatek/ims/ImsServiceCallTracker;->getInstance(I)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ImsServiceCallTracker;->isSelfAddress(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private normalizeNumberFromCLIR(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "number"    # Ljava/lang/String;

    .line 241
    const-string v0, "*31#"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "#31#"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private notifyConfStateUpdate()V
    .locals 8

    .line 371
    const-string v0, "ImsConferenceHandler"

    const-string v1, "notifyConfStateUpdate()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    new-instance v0, Landroid/telephony/ims/ImsConferenceState;

    invoke-direct {v0}, Landroid/telephony/ims/ImsConferenceState;-><init>()V

    .line 375
    .local v0, "confState":Landroid/telephony/ims/ImsConferenceState;
    iget-object v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfParticipants:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 376
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 377
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 378
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;"
    iget-object v3, v0, Landroid/telephony/ims/ImsConferenceState;->mParticipants:Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    const-string v3, "ImsConferenceHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "submit participants: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/mediatek/ims/ImsConferenceHandler;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;"
    goto :goto_0

    .line 382
    :cond_0
    const/4 v2, 0x0

    .line 383
    .local v2, "key":I
    iget-object v3, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mUnknowParticipants:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 384
    .local v4, "userInfo":Landroid/os/Bundle;
    iget-object v5, v0, Landroid/telephony/ims/ImsConferenceState;->mParticipants:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    const-string v5, "ImsConferenceHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "submit unknow participants: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/ims/ImsConferenceHandler;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 385
    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    add-int/lit8 v2, v2, 0x1

    .line 388
    .end local v4    # "userInfo":Landroid/os/Bundle;
    goto :goto_1

    .line 390
    :cond_1
    sget-object v3, Lcom/mediatek/ims/ImsConferenceHandler;->mListener:Lcom/mediatek/ims/DefaultConferenceHandler$Listener;

    if-eqz v3, :cond_2

    .line 391
    sget-object v3, Lcom/mediatek/ims/ImsConferenceHandler;->mListener:Lcom/mediatek/ims/DefaultConferenceHandler$Listener;

    invoke-virtual {v3, v0}, Lcom/mediatek/ims/DefaultConferenceHandler$Listener;->onParticipantsUpdate(Landroid/telephony/ims/ImsConferenceState;)V

    .line 393
    :cond_2
    return-void
.end method

.method private packUserInfo(Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;)Landroid/os/Bundle;
    .locals 5
    .param p1, "user"    # Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;

    .line 439
    invoke-virtual {p1}, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;->getEntity()Ljava/lang/String;

    move-result-object v0

    .line 440
    .local v0, "entity":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsConferenceHandler;->getUserNameFromSipTelUriString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 441
    .local v1, "userAddr":Ljava/lang/String;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 442
    .local v2, "userInfo":Landroid/os/Bundle;
    const-string v3, "user"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    const-string v3, "display-text"

    invoke-virtual {p1}, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;->getDisplayText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    const-string v3, "endpoint"

    invoke-virtual {p1}, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;->getEndPoint()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    const-string v3, "status"

    invoke-virtual {p1}, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;->getStatus()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    const-string v3, "user-entity"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    return-object v2
.end method

.method private parseXmlPackage(ILjava/lang/String;)Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;
    .locals 4
    .param p1, "len"    # I
    .param p2, "data"    # Ljava/lang/String;

    .line 421
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 422
    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 423
    .local v0, "inStream":Ljava/io/InputStream;
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    .line 424
    .local v1, "factory":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    .line 425
    .local v2, "saxParse":Ljavax/xml/parsers/SAXParser;
    new-instance v3, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;

    invoke-direct {v3}, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;-><init>()V

    .line 426
    .local v3, "xmlData":Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;
    nop

    .line 429
    invoke-virtual {v2, v0, v3}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    return-object v3

    .line 431
    .end local v0    # "inStream":Ljava/io/InputStream;
    .end local v1    # "factory":Ljavax/xml/parsers/SAXParserFactory;
    .end local v2    # "saxParse":Ljavax/xml/parsers/SAXParser;
    .end local v3    # "xmlData":Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;
    :catch_0
    move-exception v0

    .line 432
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "ImsConferenceHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parsing exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    invoke-direct {p0}, Lcom/mediatek/ims/ImsConferenceHandler;->updateConferenceStateWithLocalCache()V

    .line 434
    const/4 v1, 0x0

    return-object v1
.end method

.method private partialUpdateParticipants(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;",
            ">;)V"
        }
    .end annotation

    .line 472
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;>;"
    const-string v0, "ImsConferenceHandler"

    const-string v1, "partial update participants"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;

    .line 474
    .local v1, "user":Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;
    invoke-virtual {v1}, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;->getEntity()Ljava/lang/String;

    move-result-object v2

    .line 475
    .local v2, "entity":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsConferenceHandler;->getUserNameFromSipTelUriString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 476
    .local v3, "userAddr":Ljava/lang/String;
    iget-boolean v4, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mRestoreParticipantsAddr:Z

    if-eqz v4, :cond_0

    .line 477
    invoke-direct {p0, v3}, Lcom/mediatek/ims/ImsConferenceHandler;->getPairedAddressFromCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 479
    :cond_0
    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsConferenceHandler;->packUserInfo(Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;)Landroid/os/Bundle;

    move-result-object v4

    .line 480
    .local v4, "userInfo":Landroid/os/Bundle;
    const-string v5, "ImsConferenceHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handle user: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsConferenceHandler;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " addr: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    invoke-direct {p0, v3}, Lcom/mediatek/ims/ImsConferenceHandler;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 480
    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    invoke-virtual {v1}, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;->getStatus()Ljava/lang/String;

    move-result-object v5

    .line 485
    .local v5, "status":Ljava/lang/String;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    .line 497
    :cond_1
    const-string v6, "dialing-out"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 498
    iget-object v6, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfParticipants:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v1    # "user":Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;
    .end local v2    # "entity":Ljava/lang/String;
    .end local v3    # "userAddr":Ljava/lang/String;
    .end local v4    # "userInfo":Landroid/os/Bundle;
    .end local v5    # "status":Ljava/lang/String;
    goto :goto_2

    .line 486
    .restart local v1    # "user":Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;
    .restart local v2    # "entity":Ljava/lang/String;
    .restart local v3    # "userAddr":Ljava/lang/String;
    .restart local v4    # "userInfo":Landroid/os/Bundle;
    .restart local v5    # "status":Ljava/lang/String;
    :cond_2
    :goto_1
    const-string v6, "connected"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 487
    iget-object v6, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mUnknowParticipants:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 488
    const-string v6, "ImsConferenceHandler"

    const-string v7, "add unknow participants"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 489
    :cond_3
    const-string v6, "disconnected"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 491
    iget-object v6, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mUnknowParticipants:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 492
    iget-object v6, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mUnknowParticipants:Ljava/util/List;

    iget-object v7, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mUnknowParticipants:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 493
    const-string v6, "ImsConferenceHandler"

    const-string v7, "remove unknow participants"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    .end local v1    # "user":Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;
    .end local v2    # "entity":Ljava/lang/String;
    .end local v3    # "userAddr":Ljava/lang/String;
    .end local v4    # "userInfo":Landroid/os/Bundle;
    .end local v5    # "status":Ljava/lang/String;
    :cond_4
    :goto_2
    goto/16 :goto_0

    .line 502
    :cond_5
    return-void
.end method

.method private restoreParticipantsAddressByLocalCache()V
    .locals 17

    .line 651
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/mediatek/ims/ImsConferenceHandler;->mLocalParticipants:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 652
    .local v1, "restoreCandidate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 655
    .local v2, "restoreList":Ljava/util/LinkedHashMap;
    new-instance v3, Ljava/util/LinkedHashMap;

    iget-object v4, v0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfParticipants:Ljava/util/LinkedHashMap;

    invoke-direct {v3, v4}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 658
    .local v3, "participants":Ljava/util/LinkedHashMap;
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 659
    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 660
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 661
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 662
    .local v6, "userHandle":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    .line 663
    .local v7, "confInfo":Landroid/os/Bundle;
    invoke-direct {v0, v6}, Lcom/mediatek/ims/ImsConferenceHandler;->getPairedAddressFromCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 664
    .local v8, "restoreAddr":Ljava/lang/String;
    invoke-direct {v0, v6}, Lcom/mediatek/ims/ImsConferenceHandler;->isSelfAddress(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 665
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 667
    invoke-virtual {v2, v6, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    const-string v9, "ImsConferenceHandler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "wait for restore: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Lcom/mediatek/ims/ImsConferenceHandler;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 670
    :cond_0
    const-string v9, "user"

    invoke-virtual {v7, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    iget-object v9, v0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfParticipants:Ljava/util/LinkedHashMap;

    invoke-virtual {v9, v6, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    const-string v9, "ImsConferenceHandler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "restore participant: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " to: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    invoke-direct {v0, v8}, Lcom/mediatek/ims/ImsConferenceHandler;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 673
    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;"
    .end local v6    # "userHandle":Ljava/lang/String;
    .end local v7    # "confInfo":Landroid/os/Bundle;
    .end local v8    # "restoreAddr":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 679
    :cond_1
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 680
    .local v5, "resIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 681
    .local v6, "restoreUnknowCandidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v7, 0x0

    move v8, v7

    .line 682
    .local v8, "restoreIndex":I
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 683
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-gt v9, v8, :cond_2

    .line 684
    goto :goto_3

    .line 686
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 687
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 688
    .local v10, "userHandle":Ljava/lang/String;
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Bundle;

    .line 689
    .local v11, "confInfo":Landroid/os/Bundle;
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 691
    .local v12, "restoreAddr":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_3

    .line 692
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 694
    :cond_3
    const-string v13, "status"

    invoke-virtual {v11, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 695
    .local v13, "status":Ljava/lang/String;
    const-string v14, "disconnected"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 698
    goto :goto_2

    .line 700
    :cond_4
    iget-object v14, v0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfParticipantsAddr:Ljava/util/LinkedHashMap;

    invoke-virtual {v14, v12, v10}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    const-string v14, "user"

    invoke-virtual {v11, v14, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    iget-object v14, v0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfParticipants:Ljava/util/LinkedHashMap;

    invoke-virtual {v14, v10, v11}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    const-string v14, "ImsConferenceHandler"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "restore participant: "

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " to: "

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    invoke-direct {v0, v12}, Lcom/mediatek/ims/ImsConferenceHandler;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 703
    invoke-static {v14, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    add-int/lit8 v8, v8, 0x1

    .line 706
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;"
    .end local v10    # "userHandle":Ljava/lang/String;
    .end local v11    # "confInfo":Landroid/os/Bundle;
    .end local v12    # "restoreAddr":Ljava/lang/String;
    .end local v13    # "status":Ljava/lang/String;
    nop

    .line 681
    const/4 v7, 0x0

    goto :goto_2

    .line 709
    :cond_5
    :goto_3
    invoke-direct {v0, v6}, Lcom/mediatek/ims/ImsConferenceHandler;->restoreUnknowParticipants(Ljava/util/ArrayList;)V

    .line 710
    return-void
.end method

.method private restoreUnknowParticipants(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 713
    .local p1, "restoreUnknowCandidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mUnknowParticipants:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 714
    .local v0, "restoredUnknowParticipants":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    const/4 v1, 0x0

    .line 715
    .local v1, "restoreIndex":I
    iget-object v2, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mUnknowParticipants:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 716
    .local v3, "userInfo":Landroid/os/Bundle;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gt v4, v1, :cond_0

    .line 717
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 718
    goto :goto_0

    .line 720
    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 721
    .local v4, "restoreAddr":Ljava/lang/String;
    const-string v5, "user"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    iget-object v5, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfParticipants:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v4, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 725
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 727
    :cond_1
    const-string v5, "ImsConferenceHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "restore unknow participants("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ") to: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    add-int/lit8 v1, v1, 0x1

    .line 730
    .end local v3    # "userInfo":Landroid/os/Bundle;
    .end local v4    # "restoreAddr":Ljava/lang/String;
    goto :goto_0

    .line 732
    :cond_2
    iput-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mUnknowParticipants:Ljava/util/List;

    .line 733
    return-void
.end method

.method private sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 781
    sget-boolean v0, Lcom/mediatek/ims/ImsConferenceHandler;->SENLOG:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/mediatek/ims/ImsConferenceHandler;->TELDBG:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 784
    :cond_0
    const-string v0, "[hidden]"

    return-object v0

    .line 782
    :cond_1
    :goto_0
    return-object p1
.end method

.method private shouldAutoTerminateConf()Z
    .locals 4

    .line 737
    const/4 v0, 0x1

    .line 738
    .local v0, "shouldTerminate":Z
    const-string v1, "ImsConferenceHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shouldTerminate:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    return v0
.end method

.method private updateConferenceStateWithLocalCache()V
    .locals 7

    .line 338
    const-string v0, "ImsConferenceHandler"

    const-string v1, "updateConferenceStateWithLocalCache()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mLocalParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/mediatek/ims/ImsConferenceHandler;->shouldAutoTerminateConf()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 341
    sget-object v0, Lcom/mediatek/ims/ImsConferenceHandler;->mListener:Lcom/mediatek/ims/DefaultConferenceHandler$Listener;

    if-eqz v0, :cond_0

    .line 342
    sget-object v0, Lcom/mediatek/ims/ImsConferenceHandler;->mListener:Lcom/mediatek/ims/DefaultConferenceHandler$Listener;

    invoke-virtual {v0}, Lcom/mediatek/ims/DefaultConferenceHandler$Listener;->onAutoTerminate()V

    .line 344
    :cond_0
    const-string v0, "ImsConferenceHandler"

    const-string v1, "no participants"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    return-void

    .line 348
    :cond_1
    new-instance v0, Landroid/telephony/ims/ImsConferenceState;

    invoke-direct {v0}, Landroid/telephony/ims/ImsConferenceState;-><init>()V

    .line 350
    .local v0, "confState":Landroid/telephony/ims/ImsConferenceState;
    iget-object v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mLocalParticipants:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 351
    .local v2, "addr":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsConferenceHandler;->createFakeInfo(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 352
    .local v3, "userInfo":Landroid/os/Bundle;
    iget-object v4, v0, Landroid/telephony/ims/ImsConferenceState;->mParticipants:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    const-string v4, "ImsConferenceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "submit participants:  uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsConferenceHandler;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    .end local v2    # "addr":Ljava/lang/String;
    .end local v3    # "userInfo":Landroid/os/Bundle;
    goto :goto_0

    .line 356
    :cond_2
    sget-object v1, Lcom/mediatek/ims/ImsConferenceHandler;->mListener:Lcom/mediatek/ims/DefaultConferenceHandler$Listener;

    if-eqz v1, :cond_3

    .line 357
    sget-object v1, Lcom/mediatek/ims/ImsConferenceHandler;->mListener:Lcom/mediatek/ims/DefaultConferenceHandler$Listener;

    invoke-virtual {v1, v0}, Lcom/mediatek/ims/DefaultConferenceHandler$Listener;->onParticipantsUpdate(Landroid/telephony/ims/ImsConferenceState;)V

    .line 359
    :cond_3
    return-void
.end method

.method private updateLocalCache()V
    .locals 6

    .line 638
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfParticipants:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 639
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 640
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 641
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 642
    .local v2, "confInfo":Landroid/os/Bundle;
    const-string v3, "status"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 643
    .local v3, "status":Ljava/lang/String;
    const-string v4, "user"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 644
    .local v4, "addr":Ljava/lang/String;
    const-string v5, "disconnected"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 645
    iget-object v5, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mLocalParticipants:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 647
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;"
    .end local v2    # "confInfo":Landroid/os/Bundle;
    .end local v3    # "status":Ljava/lang/String;
    .end local v4    # "addr":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 648
    :cond_1
    return-void
.end method


# virtual methods
.method public addLocalCache([Ljava/lang/String;)V
    .locals 5
    .param p1, "participants"    # [Ljava/lang/String;

    .line 252
    if-nez p1, :cond_0

    .line 253
    return-void

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mLocalParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 256
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 257
    .local v2, "participant":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mLocalParticipants:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsConferenceHandler;->normalizeNumberFromCLIR(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    .end local v2    # "participant":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 259
    :cond_1
    return-void
.end method

.method public closeConference(Ljava/lang/String;)V
    .locals 5
    .param p1, "callId"    # Ljava/lang/String;

    .line 202
    const-string v0, "ImsConferenceHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeConference() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfCallId:I

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    .line 207
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 206
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 208
    return-void

    .line 204
    :cond_1
    :goto_0
    return-void
.end method

.method public firstMerge(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "num_1"    # Ljava/lang/String;
    .param p2, "num_2"    # Ljava/lang/String;

    .line 245
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mLocalParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 246
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mLocalParticipants:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsConferenceHandler;->normalizeNumberFromCLIR(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mLocalParticipants:Ljava/util/ArrayList;

    invoke-direct {p0, p2}, Lcom/mediatek/ims/ImsConferenceHandler;->normalizeNumberFromCLIR(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    return-void
.end method

.method public getConfParticipantUri(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5
    .param p1, "addr"    # Ljava/lang/String;
    .param p2, "isRetry"    # Z

    .line 310
    iget-boolean v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mRestoreParticipantsAddr:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mRemoveParticipantsByUserEntity:Z

    if-eq v0, p2, :cond_0

    .line 311
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfParticipantsAddr:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 312
    .local v0, "confParticipantUri":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 313
    const-string v1, "ImsConferenceHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeParticipants confParticipantUri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsConferenceHandler;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " addr: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsConferenceHandler;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 313
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    move-object p1, v0

    .line 319
    .end local v0    # "confParticipantUri":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfParticipants:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 320
    .local v0, "confInfo":Landroid/os/Bundle;
    if-nez v0, :cond_3

    .line 321
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 324
    :cond_1
    return-object p1

    .line 322
    :cond_2
    :goto_0
    const-string v1, "sip:anonymous@anonymous.invalid"

    return-object v1

    .line 326
    :cond_3
    const-string v1, "user-entity"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 327
    .local v1, "participantUri":Ljava/lang/String;
    if-eqz v1, :cond_4

    const-string v2, "sip:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 328
    :cond_4
    move-object v1, p1

    .line 331
    :cond_5
    const-string v2, "ImsConferenceHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeParticipants uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsConferenceHandler;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " addr: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsConferenceHandler;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 331
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    return-object v1
.end method

.method public isConferenceActive()Z
    .locals 2

    .line 237
    iget v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public modifyParticipantComplete()V
    .locals 6

    .line 270
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mAddingParticipant:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mRemovingParticipant:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 271
    .local v0, "isFirstMerge":Z
    :goto_0
    iget-object v3, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mAddingParticipant:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mLocalParticipants:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mAddingParticipant:Ljava/lang/String;

    .line 272
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mAddingParticipant:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 273
    :cond_1
    iget-object v3, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mLocalParticipants:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mAddingParticipant:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    :cond_2
    iget-object v3, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mRemovingParticipant:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 276
    iget-object v3, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mLocalParticipants:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mRemovingParticipant:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 277
    iget-object v3, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mRemovingParticipant:Ljava/lang/String;

    iput-object v3, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mLatestRemovedParticipant:Ljava/lang/String;

    .line 279
    :cond_3
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mAddingParticipant:Ljava/lang/String;

    .line 280
    iput-object v3, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mRemovingParticipant:Ljava/lang/String;

    .line 281
    const-string v3, "ImsConferenceHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "modifyParticipantComplete: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mLocalParticipants:Ljava/util/ArrayList;

    .line 282
    invoke-virtual {v5}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/ims/ImsConferenceHandler;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 281
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const-string v3, "mtk_key_conference_management_supported"

    invoke-direct {p0, v3}, Lcom/mediatek/ims/ImsConferenceHandler;->getBooleanFromCarrierConfig(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 285
    iget-object v3, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 288
    :cond_4
    iget-object v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mCachedConferenceData:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 289
    iget-object v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 292
    :cond_5
    iget-boolean v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mIsCepNotified:Z

    if-ne v1, v2, :cond_6

    if-ne v0, v2, :cond_6

    .line 293
    const-string v1, "ImsConferenceHandler"

    const-string v2, "CEP is notify before merge complete, notify again"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-direct {p0}, Lcom/mediatek/ims/ImsConferenceHandler;->notifyConfStateUpdate()V

    .line 296
    :cond_6
    return-void
.end method

.method public modifyParticipantFailed()V
    .locals 3

    .line 299
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mAddingParticipant:Ljava/lang/String;

    .line 300
    iput-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mRemovingParticipant:Ljava/lang/String;

    .line 301
    iput-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mLatestRemovedParticipant:Ljava/lang/String;

    .line 302
    const-string v0, "ImsConferenceHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "modifyParticipantFailed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mLocalParticipants:Ljava/util/ArrayList;

    .line 303
    invoke-virtual {v2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsConferenceHandler;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 302
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mCachedConferenceData:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 307
    :cond_0
    return-void
.end method

.method public startConference(Landroid/content/Context;Lcom/mediatek/ims/DefaultConferenceHandler$Listener;Ljava/lang/String;I)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/mediatek/ims/DefaultConferenceHandler$Listener;
    .param p3, "callId"    # Ljava/lang/String;
    .param p4, "phoneId"    # I

    .line 181
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 182
    const-string v0, "ImsConferenceHandler"

    const-string v1, "startConference() failed, a conference is ongoing"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    return-void

    .line 185
    :cond_0
    const-string v0, "ImsConferenceHandler"

    const-string v1, "startConference()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    sput-object p2, Lcom/mediatek/ims/ImsConferenceHandler;->mListener:Lcom/mediatek/ims/DefaultConferenceHandler$Listener;

    .line 187
    iput-object p1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mContext:Landroid/content/Context;

    .line 188
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 189
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ims.conference"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 190
    iget-object v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 191
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfCallId:I

    .line 192
    iput p4, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mPhoneId:I

    .line 193
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mIsFirstCep:Z

    .line 194
    iput v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfState:I

    .line 195
    const-string v1, "mtk_key_restore_address_for_ims_conference_participants"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsConferenceHandler;->getBooleanFromCarrierConfig(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mRestoreParticipantsAddr:Z

    .line 197
    const-string v1, "mtk_key_operate_ims_conference_participants_by_user_entity"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsConferenceHandler;->getBooleanFromCarrierConfig(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mRemoveParticipantsByUserEntity:Z

    .line 199
    return-void
.end method

.method public tryAddParticipant(Ljava/lang/String;)V
    .locals 1
    .param p1, "addr"    # Ljava/lang/String;

    .line 262
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsConferenceHandler;->normalizeNumberFromCLIR(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mAddingParticipant:Ljava/lang/String;

    .line 263
    return-void
.end method

.method public tryRemoveParticipant(Ljava/lang/String;)V
    .locals 1
    .param p1, "addr"    # Ljava/lang/String;

    .line 266
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsConferenceHandler;->normalizeNumberFromCLIR(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mRemovingParticipant:Ljava/lang/String;

    .line 267
    return-void
.end method
