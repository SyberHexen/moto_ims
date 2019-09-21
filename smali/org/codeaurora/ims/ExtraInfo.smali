.class public Lorg/codeaurora/ims/ExtraInfo;
.super Ljava/lang/Object;
.source "ExtraInfo.java"


# static fields
.field public static final INVALID:I = -0x1

.field public static final LTE_TO_IWLAN_HO_FAIL:I = 0x1


# instance fields
.field private final mExtraInfo:[B

.field private final mExtraType:I


# direct methods
.method public constructor <init>(I[B)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "info"    # [B

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lorg/codeaurora/ims/ExtraInfo;->mExtraType:I

    .line 22
    iput-object p2, p0, Lorg/codeaurora/ims/ExtraInfo;->mExtraInfo:[B

    .line 23
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExtraInfo extraType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/ExtraInfo;->mExtraType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
