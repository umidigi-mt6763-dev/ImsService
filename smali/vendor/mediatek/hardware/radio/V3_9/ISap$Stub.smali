.class public abstract Lvendor/mediatek/hardware/radio/V3_9/ISap$Stub;
.super Landroid/os/HwBinder;
.source "ISap.java"

# interfaces
.implements Lvendor/mediatek/hardware/radio/V3_9/ISap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/mediatek/hardware/radio/V3_9/ISap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 416
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 419
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 485
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 486
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 487
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 488
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 489
    return-object v0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 449
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xe

    new-array v1, v1, [[B

    const/16 v2, 0x20

    new-array v3, v2, [B

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_1

    const/4 v4, 0x1

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_2

    const/4 v4, 0x2

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_3

    const/4 v4, 0x3

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_4

    const/4 v4, 0x4

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_5

    const/4 v4, 0x5

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_6

    const/4 v4, 0x6

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_7

    const/4 v4, 0x7

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_8

    const/16 v4, 0x8

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_9

    const/16 v4, 0x9

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_a

    const/16 v4, 0xa

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_b

    const/16 v4, 0xb

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_c

    const/16 v4, 0xc

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_d

    const/16 v3, 0xd

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :array_0
    .array-data 1
        0x6bt
        0x4ft
        -0x7ft
        -0x72t
        0x64t
        0x13t
        -0x75t
        -0x23t
        -0x1dt
        -0x5ct
        -0x75t
        0x5dt
        0x10t
        0x22t
        0x15t
        0x3bt
        0x17t
        0x6bt
        0x21t
        0x7et
        0x59t
        -0x43t
        0x48t
        -0x2t
        0x22t
        -0x8t
        -0x67t
        0x28t
        -0x2bt
        -0xct
        -0x8t
        0x69t
    .end array-data

    :array_1
    .array-data 1
        0x7ct
        0x17t
        -0x10t
        0x6t
        0x3t
        -0x7bt
        0x45t
        -0x70t
        -0x6ct
        0x2bt
        0x15t
        0x65t
        0x3ct
        -0x67t
        -0x66t
        -0x1bt
        0x0t
        -0x7dt
        -0x1dt
        0x79t
        0x74t
        0x61t
        -0x6dt
        -0x4bt
        0x1dt
        -0x19t
        -0x3dt
        -0x79t
        0x6t
        -0x54t
        0x52t
        -0x7t
    .end array-data

    :array_2
    .array-data 1
        0x15t
        -0x2ct
        0x71t
        -0x27t
        -0x49t
        0x70t
        -0x62t
        0x4dt
        0x48t
        0x72t
        0x22t
        0x35t
        -0x53t
        -0x17t
        0x56t
        -0x7t
        0x46t
        0x44t
        -0x6at
        -0x8t
        0x6et
        0x8t
        0x49t
        0x4dt
        0x27t
        0xdt
        0x7bt
        -0x8t
        0x72t
        0x68t
        -0x35t
        -0x18t
    .end array-data

    :array_3
    .array-data 1
        -0x64t
        -0x6at
        0x41t
        -0x5et
        -0x1bt
        0x6dt
        0x2dt
        0xat
        0x29t
        0x26t
        -0x44t
        -0x5t
        0x68t
        -0x55t
        0x13t
        -0x3at
        -0x3ft
        0x35t
        0x37t
        -0x7bt
        0x2t
        0x10t
        0xet
        0x57t
        0x7ft
        -0x1bt
        0x2dt
        0x11t
        0x7dt
        0x49t
        0x6at
        0x57t
    .end array-data

    :array_4
    .array-data 1
        -0x42t
        -0x20t
        0xbt
        -0x4ft
        0x58t
        -0x72t
        -0x5ct
        0x6et
        -0x6at
        0x12t
        0x7bt
        0x8t
        -0x27t
        -0x4dt
        -0x2at
        0x22t
        0x79t
        -0x57t
        0x43t
        0x50t
        -0x7dt
        -0xat
        -0x7dt
        -0x52t
        0x76t
        -0x49t
        0x39t
        0x5et
        0x6at
        -0x1ct
        0x48t
        0x7t
    .end array-data

    :array_5
    .array-data 1
        -0x69t
        -0xet
        -0x29t
        -0x4et
        0x70t
        -0x16t
        -0x32t
        0x67t
        0x65t
        0x23t
        0x28t
        0x25t
        -0x57t
        -0x40t
        -0x78t
        0x3bt
        0xet
        0x13t
        0x5t
        0x74t
        -0x6dt
        -0x9t
        -0x69t
        -0x26t
        0x6et
        -0x16t
        0xft
        0x1ft
        0xdt
        -0x5at
        -0x4ct
        0x48t
    .end array-data

    :array_6
    .array-data 1
        0x0t
        -0x29t
        0x17t
        -0x34t
        0x4t
        0x6t
        0x33t
        0x55t
        0x24t
        -0x47t
        -0x3ft
        -0x1ct
        0x60t
        -0x11t
        0x5ct
        -0x47t
        -0x58t
        -0x26t
        -0x79t
        -0x78t
        0x56t
        0x0t
        0x1dt
        -0x44t
        -0x6at
        -0x4et
        -0x35t
        -0x3bt
        -0x73t
        -0xat
        0x6at
        0x1ct
    .end array-data

    :array_7
    .array-data 1
        0x57t
        0x30t
        0x21t
        0xft
        0x24t
        0x5ct
        0x34t
        -0x44t
        0x51t
        -0x22t
        0x1ft
        -0xdt
        0x37t
        0x0t
        0x2dt
        0x8t
        0x53t
        0x52t
        -0x59t
        -0x60t
        0x7at
        0x78t
        -0x6et
        -0x40t
        0x33t
        -0x35t
        0x62t
        -0x5ct
        0x4et
        0x5at
        -0x3et
        -0x70t
    .end array-data

    :array_8
    .array-data 1
        0x43t
        -0x43t
        0x2ct
        0x58t
        -0x31t
        -0x46t
        0x41t
        -0x1ct
        0x6t
        -0x37t
        0x37t
        0x5ct
        0x53t
        -0x45t
        -0x46t
        -0x70t
        -0xat
        0x1ft
        0x73t
        0x3bt
        -0x1t
        -0x41t
        -0x7dt
        -0x31t
        -0xat
        -0x76t
        0x3dt
        0x6at
        -0x7bt
        -0x4dt
        -0x80t
        -0x75t
    .end array-data

    :array_9
    .array-data 1
        -0x67t
        -0x37t
        0x3et
        0x3ft
        0x30t
        0x3ct
        0x5ct
        0x4ct
        0x8t
        -0x76t
        0x20t
        -0xat
        0x5bt
        -0x1et
        0x47t
        -0x7ft
        0x6at
        0x59t
        -0x41t
        0x37t
        0xat
        0x65t
        -0x3at
        0x7bt
        0x39t
        0x47t
        -0x17t
        0x62t
        0x69t
        -0x71t
        -0x2t
        -0x46t
    .end array-data

    :array_a
    .array-data 1
        0x2dt
        -0x7at
        -0x6et
        -0x69t
        -0x6ct
        0x79t
        0x5et
        0x5ct
        0x70t
        -0xct
        -0x3t
        -0x4bt
        0x7t
        0x34t
        -0x7bt
        -0x3t
        0x5t
        -0x7dt
        0x5ct
        -0x64t
        0x6ft
        0x49t
        0x61t
        0x16t
        0x68t
        0x7ct
        0x3dt
        -0x61t
        0x32t
        -0x1at
        -0x21t
        0x3et
    .end array-data

    :array_b
    .array-data 1
        -0x7t
        0x6ct
        -0x44t
        0x59t
        -0x21t
        -0x1ft
        0x6ct
        -0x73t
        0xct
        0x2at
        0x7et
        0x6t
        -0x25t
        0x24t
        -0x28t
        0x73t
        -0x76t
        0x63t
        0x28t
        -0x4at
        -0x17t
        0xft
        0x7bt
        -0x72t
        0x16t
        0x40t
        -0x16t
        0x2bt
        0x46t
        0x0t
        -0x22t
        -0x43t
    .end array-data

    :array_c
    .array-data 1
        -0x22t
        0x3at
        -0x47t
        -0x9t
        0x3bt
        0x10t
        0x73t
        -0x33t
        0x67t
        0x7bt
        0x19t
        -0x28t
        -0x7at
        -0x5t
        -0x6et
        0x7et
        -0x6dt
        -0x7ft
        -0x4dt
        0x1t
        0x61t
        -0x59t
        0x4t
        0x71t
        0x2dt
        0x2bt
        0x30t
        -0x8t
        0x75t
        -0x79t
        0x3ft
        0x5ct
    .end array-data

    :array_d
    .array-data 1
        -0x43t
        -0x26t
        -0x4at
        0x18t
        0x4dt
        0x7at
        0x34t
        0x6dt
        -0x5at
        -0x60t
        0x7dt
        -0x40t
        -0x7et
        -0x74t
        -0xft
        -0x66t
        0x69t
        0x6ft
        0x4ct
        -0x56t
        0x36t
        0x11t
        -0x3bt
        0x1ft
        0x2et
        0x14t
        0x56t
        0x5at
        0x14t
        -0x4ct
        0xft
        -0x27t
    .end array-data
.end method

.method public final interfaceChain()Ljava/util/ArrayList;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 424
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.mediatek.hardware.radio@3.9::ISap"

    const-string v2, "vendor.mediatek.hardware.radio@3.8::ISap"

    const-string v3, "vendor.mediatek.hardware.radio@3.7::ISap"

    const-string v4, "vendor.mediatek.hardware.radio@3.6::ISap"

    const-string v5, "vendor.mediatek.hardware.radio@3.5::ISap"

    const-string v6, "vendor.mediatek.hardware.radio@3.4::ISap"

    const-string v7, "vendor.mediatek.hardware.radio@3.3::ISap"

    const-string v8, "vendor.mediatek.hardware.radio@3.2::ISap"

    const-string v9, "vendor.mediatek.hardware.radio@3.1::ISap"

    const-string v10, "vendor.mediatek.hardware.radio@3.0::ISap"

    const-string v11, "android.hardware.radio@1.2::ISap"

    const-string v12, "android.hardware.radio@1.1::ISap"

    const-string v13, "android.hardware.radio@1.0::ISap"

    const-string v14, "android.hidl.base@1.0::IBase"

    filled-new-array/range {v1 .. v14}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 443
    const-string v0, "vendor.mediatek.hardware.radio@3.9::ISap"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 474
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 494
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 495
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 9
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 523
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_8

    .line 805
    :sswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_0

    move v1, v2

    nop

    .line 806
    .local v1, "_hidl_is_oneway":Z
    :cond_0
    if-eqz v1, :cond_25

    .line 807
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 808
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 809
    goto/16 :goto_8

    .line 792
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1

    move v1, v2

    nop

    .line 793
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1
    if-eq v1, v2, :cond_2

    .line 794
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 795
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 796
    goto/16 :goto_8

    .line 797
    :cond_2
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 799
    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_9/ISap$Stub;->notifySyspropsChanged()V

    .line 800
    goto/16 :goto_8

    .line 776
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move v2, v1

    .line 777
    .local v2, "_hidl_is_oneway":Z
    :goto_0
    if-eqz v2, :cond_4

    .line 778
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 779
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 780
    goto/16 :goto_8

    .line 781
    :cond_4
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 783
    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_9/ISap$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 784
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 785
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 786
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 787
    goto/16 :goto_8

    .line 761
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    move v2, v1

    .line 762
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_1
    if-eqz v2, :cond_6

    .line 763
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 764
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 765
    goto/16 :goto_8

    .line 766
    :cond_6
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 768
    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_9/ISap$Stub;->ping()V

    .line 769
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 770
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 771
    goto/16 :goto_8

    .line 751
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7

    move v1, v2

    nop

    .line 752
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7
    if-eqz v1, :cond_25

    .line 753
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 754
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 755
    goto/16 :goto_8

    .line 738
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8

    move v1, v2

    nop

    .line 739
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8
    if-eq v1, v2, :cond_9

    .line 740
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 741
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 742
    goto/16 :goto_8

    .line 743
    :cond_9
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 745
    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_9/ISap$Stub;->setHALInstrumentation()V

    .line 746
    goto/16 :goto_8

    .line 705
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a

    goto :goto_2

    :cond_a
    move v2, v1

    .line 706
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_2
    if-eqz v2, :cond_b

    .line 707
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 708
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 709
    goto/16 :goto_8

    .line 710
    :cond_b
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 712
    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_9/ISap$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 713
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 715
    new-instance v3, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 717
    .local v3, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 718
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v3, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 719
    const-wide/16 v5, 0xc

    invoke-virtual {v3, v5, v6, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 720
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v4, 0x20

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 721
    .local v5, "childBlob":Landroid/os/HwBlob;
    nop

    .local v1, "_hidl_index_0":I
    :goto_3
    if-ge v1, v4, :cond_c

    .line 723
    mul-int/lit8 v6, v1, 0x20

    int-to-long v6, v6

    .line 724
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 725
    nop

    .line 721
    .end local v6    # "_hidl_array_offset_1":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 728
    .end local v1    # "_hidl_index_0":I
    :cond_c
    const-wide/16 v6, 0x0

    invoke-virtual {v3, v6, v7, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 730
    .end local v4    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 732
    .end local v3    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 733
    goto/16 :goto_8

    .line 689
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d

    goto :goto_4

    :cond_d
    move v2, v1

    .line 690
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_4
    if-eqz v2, :cond_e

    .line 691
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 692
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 693
    goto/16 :goto_8

    .line 694
    :cond_e
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 696
    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_9/ISap$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 697
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 698
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 699
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 700
    goto/16 :goto_8

    .line 675
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f

    goto :goto_5

    :cond_f
    move v2, v1

    .line 676
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_5
    if-eqz v2, :cond_10

    .line 677
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 678
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 679
    goto/16 :goto_8

    .line 680
    :cond_10
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 682
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 683
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 684
    goto/16 :goto_8

    .line 659
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_11

    goto :goto_6

    :cond_11
    move v2, v1

    .line 660
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_6
    if-eqz v2, :cond_12

    .line 661
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 662
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 663
    goto/16 :goto_8

    .line 664
    :cond_12
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 666
    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_9/ISap$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 667
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 668
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 669
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 670
    goto/16 :goto_8

    .line 644
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_13

    move v1, v2

    nop

    .line 645
    .local v1, "_hidl_is_oneway":Z
    :cond_13
    if-eq v1, v2, :cond_14

    .line 646
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 647
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 648
    goto/16 :goto_8

    .line 649
    :cond_14
    const-string v0, "android.hardware.radio@1.0::ISap"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 651
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 652
    .local v0, "token":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 653
    .local v2, "transferProtocol":I
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_9/ISap$Stub;->setTransferProtocolReq(II)V

    .line 654
    goto/16 :goto_8

    .line 630
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "transferProtocol":I
    :pswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_15

    move v1, v2

    nop

    .line 631
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_15
    if-eq v1, v2, :cond_16

    .line 632
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 633
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 634
    goto/16 :goto_8

    .line 635
    :cond_16
    const-string v0, "android.hardware.radio@1.0::ISap"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 637
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 638
    .restart local v0    # "token":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_9/ISap$Stub;->transferCardReaderStatusReq(I)V

    .line 639
    goto/16 :goto_8

    .line 616
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_17

    move v1, v2

    nop

    .line 617
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_17
    if-eq v1, v2, :cond_18

    .line 618
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 619
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 620
    goto/16 :goto_8

    .line 621
    :cond_18
    const-string v0, "android.hardware.radio@1.0::ISap"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 623
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 624
    .restart local v0    # "token":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_9/ISap$Stub;->resetSimReq(I)V

    .line 625
    goto/16 :goto_8

    .line 601
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_19

    move v1, v2

    nop

    .line 602
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_19
    if-eq v1, v2, :cond_1a

    .line 603
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 604
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 605
    goto/16 :goto_8

    .line 606
    :cond_1a
    const-string v0, "android.hardware.radio@1.0::ISap"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 608
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 609
    .restart local v0    # "token":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 610
    .local v2, "state":Z
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_9/ISap$Stub;->powerReq(IZ)V

    .line 611
    goto/16 :goto_8

    .line 587
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "state":Z
    :pswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1b

    move v1, v2

    nop

    .line 588
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1b
    if-eq v1, v2, :cond_1c

    .line 589
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 590
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 591
    goto/16 :goto_8

    .line 592
    :cond_1c
    const-string v0, "android.hardware.radio@1.0::ISap"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 594
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 595
    .restart local v0    # "token":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_9/ISap$Stub;->transferAtrReq(I)V

    .line 596
    goto/16 :goto_8

    .line 571
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1d

    move v1, v2

    nop

    .line 572
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1d
    if-eq v1, v2, :cond_1e

    .line 573
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 574
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 575
    goto/16 :goto_8

    .line 576
    :cond_1e
    const-string v0, "android.hardware.radio@1.0::ISap"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 578
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 579
    .restart local v0    # "token":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 580
    .local v2, "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v3

    .line 581
    .local v3, "command":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_9/ISap$Stub;->apduReq(IILjava/util/ArrayList;)V

    .line 582
    goto/16 :goto_8

    .line 557
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "type":I
    .end local v3    # "command":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1f

    move v1, v2

    nop

    .line 558
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1f
    if-eq v1, v2, :cond_20

    .line 559
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 560
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 561
    goto :goto_8

    .line 562
    :cond_20
    const-string v0, "android.hardware.radio@1.0::ISap"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 564
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 565
    .restart local v0    # "token":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_9/ISap$Stub;->disconnectReq(I)V

    .line 566
    goto :goto_8

    .line 542
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_21

    move v1, v2

    nop

    .line 543
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_21
    if-eq v1, v2, :cond_22

    .line 544
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 545
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 546
    goto :goto_8

    .line 547
    :cond_22
    const-string v0, "android.hardware.radio@1.0::ISap"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 549
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 550
    .restart local v0    # "token":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 551
    .local v2, "maxMsgSize":I
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_9/ISap$Stub;->connectReq(II)V

    .line 552
    goto :goto_8

    .line 526
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "maxMsgSize":I
    :pswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_23

    goto :goto_7

    :cond_23
    move v2, v1

    .line 527
    .local v2, "_hidl_is_oneway":Z
    :goto_7
    if-eqz v2, :cond_24

    .line 528
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 529
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 530
    goto :goto_8

    .line 531
    :cond_24
    const-string v0, "android.hardware.radio@1.0::ISap"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 533
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/radio/V1_0/ISapCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/V1_0/ISapCallback;

    move-result-object v0

    .line 534
    .local v0, "sapCallback":Landroid/hardware/radio/V1_0/ISapCallback;
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_9/ISap$Stub;->setCallback(Landroid/hardware/radio/V1_0/ISapCallback;)V

    .line 535
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 536
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 537
    nop

    .line 814
    .end local v0    # "sapCallback":Landroid/hardware/radio/V1_0/ISapCallback;
    .end local v2    # "_hidl_is_oneway":Z
    :cond_25
    :goto_8
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0xf43484e -> :sswitch_9
        0xf444247 -> :sswitch_8
        0xf445343 -> :sswitch_7
        0xf485348 -> :sswitch_6
        0xf494e54 -> :sswitch_5
        0xf4c5444 -> :sswitch_4
        0xf504e47 -> :sswitch_3
        0xf524546 -> :sswitch_2
        0xf535953 -> :sswitch_1
        0xf555444 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ping()V
    .locals 0

    .line 479
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 505
    const-string v0, "vendor.mediatek.hardware.radio@3.9::ISap"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 506
    return-object p0

    .line 508
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerAsService(Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 512
    invoke-virtual {p0, p1}, Lvendor/mediatek/hardware/radio/V3_9/ISap$Stub;->registerService(Ljava/lang/String;)V

    .line 513
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 470
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_9/ISap$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@Stub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;

    .line 499
    const/4 v0, 0x1

    return v0
.end method
