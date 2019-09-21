.class public Lorg/codeaurora/ims/ServiceStatus;
.super Ljava/lang/Object;
.source "ServiceStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    }
.end annotation


# static fields
.field public static final STATUS_DISABLED:I = 0x0

.field public static final STATUS_ENABLED:I = 0x2

.field public static final STATUS_NOT_SUPPORTED:I = 0x3

.field public static final STATUS_PARTIALLY_ENABLED:I = 0x1


# instance fields
.field public accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

.field public isValid:Z

.field public rttMode:I

.field public status:I

.field public type:I

.field public userdata:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ServiceStatus;->isValid:Z

    return-void
.end method


# virtual methods
.method public isRadioTech5G()Z
    .locals 3

    .line 36
    iget-object v0, p0, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    aget-object v2, v0, v1

    if-nez v2, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    aget-object v0, v0, v1

    iget v0, v0, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    const/16 v2, 0x14

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 37
    :cond_2
    :goto_0
    return v1
.end method
