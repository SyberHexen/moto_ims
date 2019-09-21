.class public Lorg/codeaurora/ims/SuppSvcResponse$LineStatus;
.super Ljava/lang/Object;
.source "SuppSvcResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/SuppSvcResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LineStatus"
.end annotation


# instance fields
.field private mNumber:Ljava/lang/String;

.field private mStatus:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "lineNumber"    # Ljava/lang/String;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput p1, p0, Lorg/codeaurora/ims/SuppSvcResponse$LineStatus;->mStatus:I

    .line 89
    iput-object p2, p0, Lorg/codeaurora/ims/SuppSvcResponse$LineStatus;->mNumber:Ljava/lang/String;

    .line 90
    return-void
.end method


# virtual methods
.method public getNumber()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/codeaurora/ims/SuppSvcResponse$LineStatus;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 97
    iget v0, p0, Lorg/codeaurora/ims/SuppSvcResponse$LineStatus;->mStatus:I

    return v0
.end method
