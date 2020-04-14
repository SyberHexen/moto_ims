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

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ServiceStatus;->isValid:Z

    return-void
.end method
