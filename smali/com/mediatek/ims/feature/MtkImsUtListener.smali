.class public Lcom/mediatek/ims/feature/MtkImsUtListener;
.super Ljava/lang/Object;
.source "MtkImsUtListener.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MtkImsUtListener"


# instance fields
.field private mServiceInterface:Lcom/mediatek/ims/internal/IMtkImsUtListener;


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/internal/IMtkImsUtListener;)V
    .locals 0
    .param p1, "serviceInterface"    # Lcom/mediatek/ims/internal/IMtkImsUtListener;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/mediatek/ims/feature/MtkImsUtListener;->mServiceInterface:Lcom/mediatek/ims/internal/IMtkImsUtListener;

    .line 73
    return-void
.end method


# virtual methods
.method public onUtConfigurationCallForwardInTimeSlotQueried(I[Lcom/mediatek/ims/MtkImsCallForwardInfo;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "cfInfo"    # [Lcom/mediatek/ims/MtkImsCallForwardInfo;

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/feature/MtkImsUtListener;->mServiceInterface:Lcom/mediatek/ims/internal/IMtkImsUtListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1, p2}, Lcom/mediatek/ims/internal/IMtkImsUtListener;->utConfigurationCallForwardInTimeSlotQueried(Lcom/mediatek/ims/internal/IMtkImsUt;I[Lcom/mediatek/ims/MtkImsCallForwardInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MtkImsUtListener"

    const-string v2, "onSupplementaryServiceIndication: remote exception"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
