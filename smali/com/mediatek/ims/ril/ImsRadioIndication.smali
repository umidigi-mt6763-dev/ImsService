.class public Lcom/mediatek/ims/ril/ImsRadioIndication;
.super Lcom/mediatek/ims/ril/ImsRadioIndicationBase;
.source "ImsRadioIndication.java"


# static fields
.field private static final INVALID_CALL_MODE:I = 0xff


# instance fields
.field private mPhoneId:I

.field private mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/ril/ImsRILAdapter;I)V
    .locals 0
    .param p1, "ril"    # Lcom/mediatek/ims/ril/ImsRILAdapter;
    .param p2, "phoneId"    # I

    .line 62
    invoke-direct {p0}, Lcom/mediatek/ims/ril/ImsRadioIndicationBase;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    .line 64
    iput p2, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mPhoneId:I

    .line 65
    return-void
.end method

.method private getRadioStateFromInt(I)Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;
    .locals 3
    .param p1, "stateInt"    # I

    .line 1032
    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 1037
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized IMS_RIL_RadioState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1034
    :pswitch_0
    sget-object v0, Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;

    goto :goto_0

    .line 1033
    :pswitch_1
    sget-object v0, Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;->RADIO_OFF:Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;

    .local v0, "state":Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;
    :goto_0
    goto :goto_1

    .line 1035
    .end local v0    # "state":Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;
    :cond_0
    sget-object v0, Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;->RADIO_ON:Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;

    goto :goto_0

    .line 1037
    .restart local v0    # "state":Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;
    :goto_1
    nop

    .line 1040
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public callInfoIndication(ILjava/util/ArrayList;)V
    .locals 4
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 399
    .local p2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 400
    const/4 v0, 0x0

    .line 401
    .local v0, "callInfo":[Ljava/lang/String;
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 405
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, [Ljava/lang/String;

    .line 409
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xbd7

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 412
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mCallInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_1

    .line 413
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mCallInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 414
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 416
    :cond_1
    return-void

    .line 402
    :cond_2
    :goto_0
    return-void
.end method

.method public callmodChangeIndicator(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "callMode"    # Ljava/lang/String;
    .param p4, "videoState"    # Ljava/lang/String;
    .param p5, "audioDirection"    # Ljava/lang/String;
    .param p6, "pau"    # Ljava/lang/String;

    .line 169
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 170
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/4 v1, 0x2

    aput-object p4, v0, v1

    const/4 v1, 0x3

    aput-object p5, v0, v1

    const/4 v1, 0x4

    aput-object p6, v0, v1

    .line 174
    .local v0, "ret":[Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xbda

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 176
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mCallModeChangeIndicatorRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 177
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mCallModeChangeIndicatorRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 178
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 180
    :cond_0
    return-void
.end method

.method public cdmaNewSmsEx(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V
    .locals 4
    .param p1, "indicationType"    # I
    .param p2, "msg"    # Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    .line 989
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 992
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v1, 0xc2c

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLog(I)V

    .line 995
    invoke-static {p2}, Lcom/android/internal/telephony/cdma/SmsMessageConverter;->newSmsMessageFromCdmaSmsMessage(Landroid/hardware/radio/V1_0/CdmaSmsMessage;)Landroid/telephony/SmsMessage;

    move-result-object v0

    .line 996
    .local v0, "sms":Landroid/telephony/SmsMessage;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mCdmaSmsRegistrant:Landroid/os/Registrant;

    if-eqz v1, :cond_0

    .line 997
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mCdmaSmsRegistrant:Landroid/os/Registrant;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 999
    :cond_0
    return-void
.end method

.method public econfResultIndication(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "confCallId"    # Ljava/lang/String;
    .param p3, "op"    # Ljava/lang/String;
    .param p4, "num"    # Ljava/lang/String;
    .param p5, "result"    # Ljava/lang/String;
    .param p6, "cause"    # Ljava/lang/String;
    .param p7, "joinedCallId"    # Ljava/lang/String;

    .line 354
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 355
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/4 v1, 0x2

    aput-object p4, v0, v1

    const/4 v1, 0x3

    aput-object p5, v0, v1

    const/4 v2, 0x4

    aput-object p6, v0, v2

    const/4 v2, 0x5

    aput-object p7, v0, v2

    .line 358
    .local v0, "ret":[Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v3, 0xbd8

    invoke-virtual {v2, v3, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 361
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v2, v2, Lcom/mediatek/ims/ril/ImsRILAdapter;->mEconfResultRegistrants:Landroid/os/RegistrantList;

    if-eqz v2, :cond_0

    .line 362
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ECONF result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v0, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 363
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mEconfResultRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 365
    :cond_0
    return-void
.end method

.method public ectIndication(IIII)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "callId"    # I
    .param p3, "ectResult"    # I
    .param p4, "cause"    # I

    .line 264
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 265
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 v1, 0x1

    aput p3, v0, v1

    const/4 v1, 0x2

    aput p4, v0, v1

    .line 268
    .local v0, "ret":[I
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xbe6

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 270
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mEctResultRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 271
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mEctResultRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 274
    :cond_0
    return-void
.end method

.method public enterEmergencyCallbackMode(I)V
    .locals 2
    .param p1, "indicationType"    # I

    .line 84
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 86
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLog(I)V

    .line 88
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v0, v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mEnterECBMRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v0, v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mEnterECBMRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 91
    :cond_0
    return-void
.end method

.method public exitEmergencyCallbackMode(I)V
    .locals 2
    .param p1, "indicationType"    # I

    .line 102
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 104
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v1, 0x409

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLog(I)V

    .line 106
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v0, v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mExitECBMRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v0, v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mExitECBMRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 109
    :cond_0
    return-void
.end method

.method public getProvisionDone(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "result1"    # Ljava/lang/String;
    .param p3, "result2"    # Ljava/lang/String;

    .line 458
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 459
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    .line 461
    .local v0, "ret":[Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xbdd

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 464
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsGetProvisionDoneRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 465
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsGetProvisionDoneRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 466
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 468
    :cond_0
    return-void
.end method

.method public imsBearerActivation(IILjava/lang/String;)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "aid"    # I
    .param p3, "capability"    # Ljava/lang/String;

    .line 650
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 652
    iget v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mPhoneId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 653
    .local v0, "phoneId":Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 654
    .local v1, "strAid":Ljava/lang/String;
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    .line 657
    .local v2, "ret":[Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v4, 0xbe9

    invoke-virtual {v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 660
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v3, v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->mActivateBearerRegistrants:Landroid/os/RegistrantList;

    if-eqz v3, :cond_0

    .line 661
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v3, v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->mActivateBearerRegistrants:Landroid/os/RegistrantList;

    new-instance v4, Landroid/os/AsyncResult;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v2, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v3, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 664
    :cond_0
    return-void
.end method

.method public imsBearerDeactivation(IILjava/lang/String;)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "aid"    # I
    .param p3, "capability"    # Ljava/lang/String;

    .line 677
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 679
    iget v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mPhoneId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 680
    .local v0, "phoneId":Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 681
    .local v1, "strAid":Ljava/lang/String;
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    .line 684
    .local v2, "ret":[Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v4, 0xbea

    invoke-virtual {v3, v4, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 687
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v3, v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDeactivateBearerRegistrants:Landroid/os/RegistrantList;

    if-eqz v3, :cond_0

    .line 688
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v3, v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->mDeactivateBearerRegistrants:Landroid/os/RegistrantList;

    new-instance v4, Landroid/os/AsyncResult;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v2, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v3, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 691
    :cond_0
    return-void
.end method

.method public imsBearerInit(I)V
    .locals 4
    .param p1, "type"    # I

    .line 704
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 706
    const/4 v0, 0x1

    new-array v0, v0, [I

    iget v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mPhoneId:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 709
    .local v0, "ret":[I
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xbeb

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 712
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mBearerInitRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 713
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mBearerInitRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 716
    :cond_0
    return-void
.end method

.method public imsCfgConfigChanged(IILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "phoneId"    # I
    .param p3, "configId"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .line 925
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 927
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iget v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mPhoneId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/4 v1, 0x2

    aput-object p4, v0, v1

    .line 930
    .local v0, "ret":[Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xc15

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 933
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsCfgConfigChangedRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 934
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsCfgConfigChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 937
    :cond_0
    return-void
.end method

.method public imsCfgConfigLoaded(I)V
    .locals 4
    .param p1, "type"    # I

    .line 941
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 943
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iget v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mPhoneId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 946
    .local v0, "ret":[Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xc16

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 949
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsCfgConfigLoadedRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 950
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsCfgConfigLoadedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 953
    :cond_0
    return-void
.end method

.method public imsCfgDynamicImsSwitchComplete(I)V
    .locals 4
    .param p1, "type"    # I

    .line 893
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 895
    const/4 v0, 0x1

    new-array v0, v0, [I

    iget v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mPhoneId:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 898
    .local v0, "ret":[I
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xc13

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 901
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsCfgDynamicImsSwitchCompleteRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 902
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsCfgDynamicImsSwitchCompleteRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 905
    :cond_0
    return-void
.end method

.method public imsCfgFeatureChanged(IIII)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "phoneId"    # I
    .param p3, "featureId"    # I
    .param p4, "value"    # I

    .line 909
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 911
    const/4 v0, 0x3

    new-array v0, v0, [I

    iget v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mPhoneId:I

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p3, v0, v1

    const/4 v1, 0x2

    aput p4, v0, v1

    .line 914
    .local v0, "ret":[I
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xc14

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 917
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsCfgFeatureChangedRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 918
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsCfgFeatureChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 921
    :cond_0
    return-void
.end method

.method public imsConferenceInfoIndication(ILjava/util/ArrayList;)V
    .locals 4
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lvendor/mediatek/hardware/radio/V3_0/ImsConfParticipant;",
            ">;)V"
        }
    .end annotation

    .line 819
    .local p2, "participants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/radio/V3_0/ImsConfParticipant;>;"
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 820
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 821
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/ims/ImsCallSessionProxy$User;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 822
    new-instance v2, Lcom/mediatek/ims/ImsCallSessionProxy$User;

    invoke-direct {v2}, Lcom/mediatek/ims/ImsCallSessionProxy$User;-><init>()V

    .line 823
    .local v2, "user":Lcom/mediatek/ims/ImsCallSessionProxy$User;
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/mediatek/hardware/radio/V3_0/ImsConfParticipant;

    iget-object v3, v3, Lvendor/mediatek/hardware/radio/V3_0/ImsConfParticipant;->user_addr:Ljava/lang/String;

    iput-object v3, v2, Lcom/mediatek/ims/ImsCallSessionProxy$User;->mUserAddr:Ljava/lang/String;

    .line 824
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/mediatek/hardware/radio/V3_0/ImsConfParticipant;

    iget-object v3, v3, Lvendor/mediatek/hardware/radio/V3_0/ImsConfParticipant;->end_point:Ljava/lang/String;

    iput-object v3, v2, Lcom/mediatek/ims/ImsCallSessionProxy$User;->mEndPoint:Ljava/lang/String;

    .line 825
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/mediatek/hardware/radio/V3_0/ImsConfParticipant;

    iget-object v3, v3, Lvendor/mediatek/hardware/radio/V3_0/ImsConfParticipant;->entity:Ljava/lang/String;

    iput-object v3, v2, Lcom/mediatek/ims/ImsCallSessionProxy$User;->mEntity:Ljava/lang/String;

    .line 826
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/mediatek/hardware/radio/V3_0/ImsConfParticipant;

    iget-object v3, v3, Lvendor/mediatek/hardware/radio/V3_0/ImsConfParticipant;->display_text:Ljava/lang/String;

    iput-object v3, v2, Lcom/mediatek/ims/ImsCallSessionProxy$User;->mDisplayText:Ljava/lang/String;

    .line 827
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/mediatek/hardware/radio/V3_0/ImsConfParticipant;

    iget-object v3, v3, Lvendor/mediatek/hardware/radio/V3_0/ImsConfParticipant;->status:Ljava/lang/String;

    iput-object v3, v2, Lcom/mediatek/ims/ImsCallSessionProxy$User;->mStatus:Ljava/lang/String;

    .line 828
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 821
    .end local v2    # "user":Lcom/mediatek/ims/ImsCallSessionProxy$User;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 832
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xc11

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 835
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsConfInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_1

    .line 836
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsConfInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 837
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 839
    :cond_1
    return-void
.end method

.method public imsDataInfoNotify(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "capability"    # Ljava/lang/String;
    .param p3, "event"    # Ljava/lang/String;
    .param p4, "extra"    # Ljava/lang/String;

    .line 722
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 724
    iget v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mPhoneId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 725
    .local v0, "phoneId":Ljava/lang/String;
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    .line 728
    .local v1, "ret":[Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v3, 0xc27

    invoke-virtual {v2, v3, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 731
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v2, v2, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsDataInfoNotifyRegistrants:Landroid/os/RegistrantList;

    if-eqz v2, :cond_0

    .line 732
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v2, v2, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsDataInfoNotifyRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/AsyncResult;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v1, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 733
    invoke-virtual {v2, v3}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 735
    :cond_0
    return-void
.end method

.method public imsDeregDone(I)V
    .locals 4
    .param p1, "type"    # I

    .line 740
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 742
    const/4 v0, 0x1

    new-array v0, v0, [I

    iget v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mPhoneId:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 745
    .local v0, "ret":[I
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xbec

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 748
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsDeregistrationDoneRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 749
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsDeregistrationDoneRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 752
    :cond_0
    return-void
.end method

.method public imsDialogIndication(ILjava/util/ArrayList;)V
    .locals 5
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lvendor/mediatek/hardware/radio/V3_0/Dialog;",
            ">;)V"
        }
    .end annotation

    .line 877
    .local p2, "dialogList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/radio/V3_0/Dialog;>;"
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 880
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const-string v1, "RIL_UNSOL_IMS_DIALOG_INDICATION"

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 881
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/mediatek/hardware/radio/V3_0/Dialog;

    .line 882
    .local v1, "d":Lvendor/mediatek/hardware/radio/V3_0/Dialog;
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RIL_UNSOL_IMS_DIALOG_INDICATIONdialogId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lvendor/mediatek/hardware/radio/V3_0/Dialog;->dialogId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",address:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lvendor/mediatek/hardware/radio/V3_0/Dialog;->address:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 884
    .end local v1    # "d":Lvendor/mediatek/hardware/radio/V3_0/Dialog;
    goto :goto_0

    .line 886
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v0, v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsDialogRegistrant:Landroid/os/RegistrantList;

    if-eqz v0, :cond_1

    .line 887
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v0, v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsDialogRegistrant:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 889
    :cond_1
    return-void
.end method

.method public imsDisableDone(I)V
    .locals 4
    .param p1, "type"    # I

    .line 582
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 583
    const/4 v0, 0x1

    new-array v0, v0, [I

    iget v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mPhoneId:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 586
    .local v0, "ret":[I
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xbe3

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 589
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsDisableDoneRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 590
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsDisableDoneRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 593
    :cond_0
    return-void
.end method

.method public imsDisableStart(I)V
    .locals 4
    .param p1, "type"    # I

    .line 626
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 627
    const/4 v0, 0x1

    new-array v0, v0, [I

    iget v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mPhoneId:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 630
    .local v0, "ret":[I
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xbe5

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 633
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsDisableStartRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 634
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsDisableStartRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 637
    :cond_0
    return-void
.end method

.method public imsEnableDone(I)V
    .locals 4
    .param p1, "type"    # I

    .line 560
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 561
    const/4 v0, 0x1

    new-array v0, v0, [I

    iget v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mPhoneId:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 564
    .local v0, "ret":[I
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xbe2

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 567
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsEnableDoneRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 568
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsEnableDoneRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 571
    :cond_0
    return-void
.end method

.method public imsEnableStart(I)V
    .locals 4
    .param p1, "type"    # I

    .line 604
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 605
    const/4 v0, 0x1

    new-array v0, v0, [I

    iget v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mPhoneId:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 608
    .local v0, "ret":[I
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xbe4

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 611
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsEnableStartRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 612
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsEnableStartRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 615
    :cond_0
    return-void
.end method

.method public imsEventPackageIndication(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "pType"    # Ljava/lang/String;
    .param p4, "urcIdx"    # Ljava/lang/String;
    .param p5, "totalUrcCount"    # Ljava/lang/String;
    .param p6, "rawData"    # Ljava/lang/String;

    .line 514
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 515
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/4 v1, 0x2

    aput-object p4, v0, v1

    const/4 v1, 0x3

    aput-object p5, v0, v1

    const/4 v1, 0x4

    aput-object p6, v0, v1

    iget v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mPhoneId:I

    .line 516
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 519
    .local v0, "ret":[Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xbe0

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 522
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsEvtPkgRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 523
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsEvtPkgRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 524
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 526
    :cond_0
    return-void
.end method

.method public imsRadioInfoChange(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "iid"    # Ljava/lang/String;
    .param p3, "info"    # Ljava/lang/String;

    .line 792
    return-void
.end method

.method public imsRedialEmergencyIndication(ILjava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "callId"    # Ljava/lang/String;

    .line 1003
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 1005
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    iget v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mPhoneId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 1008
    .local v0, "ret":[Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " RIL_UNSOL_REDIAL_EMERGENCY_INDICATION, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1012
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsRedialEccIndRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 1013
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsRedialEccIndRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1016
    :cond_0
    return-void
.end method

.method public imsRegistrationInfo(III)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "status"    # I
    .param p3, "capability"    # I

    .line 539
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 540
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 v1, 0x1

    aput p3, v0, v1

    iget v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mPhoneId:I

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 542
    .local v0, "ret":[I
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xbe1

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 545
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsRegistrationInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 546
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsRegistrationInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 547
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 549
    :cond_0
    return-void
.end method

.method public imsRtpInfoReport(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "pdnId"    # Ljava/lang/String;
    .param p3, "networkId"    # Ljava/lang/String;
    .param p4, "timer"    # Ljava/lang/String;
    .param p5, "sendPktLost"    # Ljava/lang/String;
    .param p6, "recvPktLost"    # Ljava/lang/String;
    .param p7, "jitter"    # Ljava/lang/String;
    .param p8, "delay"    # Ljava/lang/String;

    .line 487
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 488
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/4 v1, 0x2

    aput-object p4, v0, v1

    const/4 v1, 0x3

    aput-object p5, v0, v1

    const/4 v1, 0x4

    aput-object p6, v0, v1

    const/4 v1, 0x5

    aput-object p7, v0, v1

    const/4 v1, 0x6

    aput-object p8, v0, v1

    .line 491
    .local v0, "ret":[Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xbde

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 494
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRTPInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 495
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRTPInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 496
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 498
    :cond_0
    return-void
.end method

.method public imsSupportEcc(II)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "supportLteEcc"    # I

    .line 774
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 776
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    iget v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mPhoneId:I

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 779
    .local v0, "ret":[I
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " RIL_UNSOL_IMS_ECC_SUPPORT, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 783
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsEccSupportRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 784
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsEccSupportRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 787
    :cond_0
    return-void
.end method

.method public incomingCallIndication(ILvendor/mediatek/hardware/radio/V3_0/IncomingCallNotification;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "inCallNotify"    # Lvendor/mediatek/hardware/radio/V3_0/IncomingCallNotification;

    .line 428
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 429
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    .line 430
    .local v0, "ret":[Ljava/lang/String;
    iget-object v1, p2, Lvendor/mediatek/hardware/radio/V3_0/IncomingCallNotification;->callId:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 431
    iget-object v1, p2, Lvendor/mediatek/hardware/radio/V3_0/IncomingCallNotification;->number:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 432
    iget-object v1, p2, Lvendor/mediatek/hardware/radio/V3_0/IncomingCallNotification;->type:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 433
    iget-object v1, p2, Lvendor/mediatek/hardware/radio/V3_0/IncomingCallNotification;->callMode:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 434
    iget-object v1, p2, Lvendor/mediatek/hardware/radio/V3_0/IncomingCallNotification;->seqNo:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 435
    iget-object v1, p2, Lvendor/mediatek/hardware/radio/V3_0/IncomingCallNotification;->redirectNumber:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 436
    iget-object v1, p2, Lvendor/mediatek/hardware/radio/V3_0/IncomingCallNotification;->toNumber:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 438
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xbc7

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 441
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mIncomingCallIndicationRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 442
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mIncomingCallIndicationRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 443
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 445
    :cond_0
    return-void
.end method

.method public lteMessageWaitingIndication(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "pType"    # Ljava/lang/String;
    .param p4, "urcIdx"    # Ljava/lang/String;
    .param p5, "totalUrcCount"    # Ljava/lang/String;
    .param p6, "rawData"    # Ljava/lang/String;

    .line 856
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 857
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/4 v1, 0x2

    aput-object p4, v0, v1

    const/4 v1, 0x3

    aput-object p5, v0, v1

    const/4 v1, 0x4

    aput-object p6, v0, v1

    iget v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mPhoneId:I

    .line 858
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 861
    .local v0, "ret":[Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xc12

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 864
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mLteMsgWaitingRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 865
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mLteMsgWaitingRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 866
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 868
    :cond_0
    return-void
.end method

.method public multiImsCount(II)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "count"    # I

    .line 757
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 759
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    iget v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mPhoneId:I

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 762
    .local v0, "ret":[I
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xc0d

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 765
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMultiImsCountRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 766
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMultiImsCountRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 767
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 769
    :cond_0
    return-void
.end method

.method public newSmsEx(ILjava/util/ArrayList;)V
    .locals 5
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 973
    .local p2, "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 975
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iget v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mPhoneId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 977
    .local v0, "ret":[Ljava/lang/String;
    invoke-static {p2}, Lcom/android/internal/telephony/RIL;->arrayListToPrimitiveArray(Ljava/util/ArrayList;)[B

    move-result-object v1

    .line 979
    .local v1, "pduArray":[B
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v3, 0xc29

    invoke-virtual {v2, v3, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 982
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v2, v2, Lcom/mediatek/ims/ril/ImsRILAdapter;->mNewSmsRegistrant:Landroid/os/Registrant;

    if-eqz v2, :cond_0

    .line 983
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v2, v2, Lcom/mediatek/ims/ril/ImsRILAdapter;->mNewSmsRegistrant:Landroid/os/Registrant;

    new-instance v3, Landroid/os/AsyncResult;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v1, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 985
    :cond_0
    return-void
.end method

.method public newSmsStatusReportEx(ILjava/util/ArrayList;)V
    .locals 5
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 957
    .local p2, "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 959
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iget v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mPhoneId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 961
    .local v0, "ret":[Ljava/lang/String;
    invoke-static {p2}, Lcom/android/internal/telephony/RIL;->arrayListToPrimitiveArray(Ljava/util/ArrayList;)[B

    move-result-object v1

    .line 963
    .local v1, "pduArray":[B
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v3, 0xc28

    invoke-virtual {v2, v3, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 966
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v2, v2, Lcom/mediatek/ims/ril/ImsRILAdapter;->mSmsStatusRegistrant:Landroid/os/Registrant;

    if-eqz v2, :cond_0

    .line 967
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v2, v2, Lcom/mediatek/ims/ril/ImsRILAdapter;->mSmsStatusRegistrant:Landroid/os/Registrant;

    new-instance v3, Landroid/os/AsyncResult;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v1, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 969
    :cond_0
    return-void
.end method

.method public noEmergencyCallbackMode(I)V
    .locals 2
    .param p1, "indicationType"    # I

    .line 120
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 122
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v1, 0xc2d

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLog(I)V

    .line 124
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v0, v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mNoECBMRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v0, v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mNoECBMRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 127
    :cond_0
    return-void
.end method

.method public onUssi(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "clazz"    # Ljava/lang/String;
    .param p3, "status"    # Ljava/lang/String;
    .param p4, "str"    # Ljava/lang/String;
    .param p5, "lang"    # Ljava/lang/String;
    .param p6, "errorCode"    # Ljava/lang/String;
    .param p7, "alertingPattern"    # Ljava/lang/String;
    .param p8, "sipCause"    # Ljava/lang/String;

    .line 293
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 294
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/4 v1, 0x2

    aput-object p4, v0, v1

    const/4 v1, 0x3

    aput-object p5, v0, v1

    const/4 v1, 0x4

    aput-object p6, v0, v1

    const/4 v1, 0x5

    aput-object p7, v0, v1

    const/4 v1, 0x6

    aput-object p8, v0, v1

    iget v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mPhoneId:I

    .line 296
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 299
    .local v0, "ret":[Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xbdc

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 301
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mUSSIRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 302
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mUSSIRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 305
    :cond_0
    return-void
.end method

.method public onVolteSubscription(II)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "status"    # I

    .line 238
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 240
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    iget v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mPhoneId:I

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 243
    .local v0, "ret":[I
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xc26

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 246
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mVolteSubscriptionRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 247
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mVolteSubscriptionRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 250
    :cond_0
    return-void
.end method

.method public onXui(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "accountId"    # Ljava/lang/String;
    .param p3, "broadcastFlag"    # Ljava/lang/String;
    .param p4, "xuiInfo"    # Ljava/lang/String;

    .line 217
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 218
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/4 v1, 0x2

    aput-object p4, v0, v1

    iget v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mPhoneId:I

    .line 219
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 222
    .local v0, "ret":[Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xbdf

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 224
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mXuiRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 225
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mXuiRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 227
    :cond_0
    return-void
.end method

.method public radioStateChanged(II)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "radioState"    # I

    .line 377
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 378
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ril/ImsRadioIndication;->getRadioStateFromInt(I)Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;

    move-result-object v0

    .line 381
    .local v0, "newState":Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "radioStateChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3e8

    invoke-virtual {v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogMore(ILjava/lang/String;)V

    .line 385
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v1, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->setRadioState(Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;)V

    .line 386
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v1, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->notifyRadioStateChanged(Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;)V

    .line 387
    return-void
.end method

.method protected riljLoge(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 1020
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .line 1021
    return-void
.end method

.method public sipCallProgressIndicator(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "dir"    # Ljava/lang/String;
    .param p4, "sipMsgType"    # Ljava/lang/String;
    .param p5, "method"    # Ljava/lang/String;
    .param p6, "responseCode"    # Ljava/lang/String;
    .param p7, "reasonText"    # Ljava/lang/String;

    .line 324
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 325
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/4 v1, 0x2

    aput-object p4, v0, v1

    const/4 v1, 0x3

    aput-object p5, v0, v1

    const/4 v1, 0x4

    aput-object p6, v0, v1

    const/4 v1, 0x5

    aput-object p7, v0, v1

    .line 328
    .local v0, "ret":[Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xbd9

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 331
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mCallProgressIndicatorRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 332
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mCallProgressIndicatorRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 333
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 335
    :cond_0
    return-void
.end method

.method public speechCodecInfoIndication(II)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "info"    # I

    .line 796
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 797
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 800
    .local v0, "ret":[I
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " RIL_UNSOL_SPEECH_CODEC_INFO, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 804
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mSpeechCodecInfoRegistrant:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 805
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mSpeechCodecInfoRegistrant:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 807
    :cond_0
    return-void
.end method

.method public videoCapabilityIndicator(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "localVideoCap"    # Ljava/lang/String;
    .param p4, "remoteVideoCap"    # Ljava/lang/String;

    .line 142
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 143
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/4 v1, 0x2

    aput-object p4, v0, v1

    .line 146
    .local v0, "ret":[Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xbdb

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 148
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mVideoCapabilityIndicatorRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 149
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mVideoCapabilityIndicatorRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 150
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 152
    :cond_0
    return-void
.end method

.method public volteSetting(IZ)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "isEnable"    # Z

    .line 191
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(I)V

    .line 192
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mPhoneId:I

    aput v2, v0, v1

    .line 195
    .local v0, "ret":[I
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xbe7

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 198
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mVolteSettingValue:Ljava/lang/Object;

    .line 199
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mVolteSettingRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 200
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRadioIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mVolteSettingRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 201
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 203
    :cond_0
    return-void
.end method
