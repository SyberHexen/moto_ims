.class public final Lorg/codeaurora/ims/ViceUriInfo;
.super Ljava/lang/Object;
.source "ViceUriInfo.java"


# instance fields
.field private final mViceInfoUri:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ViceUriInfo;->mViceInfoUri:[B

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 19
    .local p1, "uri":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtils;->getByteArray(Ljava/util/ArrayList;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/ViceUriInfo;->mViceInfoUri:[B

    .line 21
    return-void
.end method


# virtual methods
.method public getViceInfoUri()[B
    .locals 1

    .line 24
    iget-object v0, p0, Lorg/codeaurora/ims/ViceUriInfo;->mViceInfoUri:[B

    return-object v0
.end method
