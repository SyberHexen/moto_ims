.class public final Lorg/codeaurora/ims/GeoLocationInfo;
.super Ljava/lang/Object;
.source "GeoLocationInfo.java"


# instance fields
.field private mLatitude:D

.field private mLongitude:D


# direct methods
.method public constructor <init>(DD)V
    .locals 0
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-wide p1, p0, Lorg/codeaurora/ims/GeoLocationInfo;->mLatitude:D

    .line 28
    iput-wide p3, p0, Lorg/codeaurora/ims/GeoLocationInfo;->mLongitude:D

    .line 29
    return-void
.end method


# virtual methods
.method public getLat()D
    .locals 2

    .line 32
    iget-wide v0, p0, Lorg/codeaurora/ims/GeoLocationInfo;->mLatitude:D

    return-wide v0
.end method

.method public getLon()D
    .locals 2

    .line 36
    iget-wide v0, p0, Lorg/codeaurora/ims/GeoLocationInfo;->mLongitude:D

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GeoLocationInfo latitude: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/codeaurora/ims/GeoLocationInfo;->mLatitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " longitude: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/codeaurora/ims/GeoLocationInfo;->mLongitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
