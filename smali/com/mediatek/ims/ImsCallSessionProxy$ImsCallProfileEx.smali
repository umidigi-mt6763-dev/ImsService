.class Lcom/mediatek/ims/ImsCallSessionProxy$ImsCallProfileEx;
.super Ljava/lang/Object;
.source "ImsCallSessionProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/ImsCallSessionProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsCallProfileEx"
.end annotation


# static fields
.field public static final EXTRA_INCOMING_MPTY:Ljava/lang/String; = "incoming_mpty"

.field public static final EXTRA_MPTY:Ljava/lang/String; = "mpty"


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/ImsCallSessionProxy;


# direct methods
.method private constructor <init>(Lcom/mediatek/ims/ImsCallSessionProxy;)V
    .locals 0

    .line 345
    iput-object p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$ImsCallProfileEx;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method