.class public Lorg/codeaurora/ims/SuppSvcResponse$BarredLines;
.super Ljava/lang/Object;
.source "SuppSvcResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/SuppSvcResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BarredLines"
.end annotation


# instance fields
.field private mLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/SuppSvcResponse$LineStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceClass:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "serviceClass"    # I

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput p1, p0, Lorg/codeaurora/ims/SuppSvcResponse$BarredLines;->mServiceClass:I

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/SuppSvcResponse$BarredLines;->mLines:Ljava/util/List;

    .line 122
    return-void
.end method


# virtual methods
.method public addLine(Lorg/codeaurora/ims/SuppSvcResponse$LineStatus;)V
    .locals 1
    .param p1, "line"    # Lorg/codeaurora/ims/SuppSvcResponse$LineStatus;

    .line 125
    iget-object v0, p0, Lorg/codeaurora/ims/SuppSvcResponse$BarredLines;->mLines:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    return-void
.end method

.method public getLines()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/SuppSvcResponse$LineStatus;",
            ">;"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lorg/codeaurora/ims/SuppSvcResponse$BarredLines;->mLines:Ljava/util/List;

    return-object v0
.end method
