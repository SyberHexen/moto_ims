.class Lorg/codeaurora/ims/ImsServiceSub$GeocoderTask;
.super Ljava/lang/Object;
.source "ImsServiceSub.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsServiceSub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GeocoderTask"
.end annotation


# instance fields
.field final MAX_RESULTS:I

.field private latitude:D

.field private longitude:D

.field final synthetic this$0:Lorg/codeaurora/ims/ImsServiceSub;


# direct methods
.method public constructor <init>(Lorg/codeaurora/ims/ImsServiceSub;DD)V
    .locals 0
    .param p2, "lat"    # D
    .param p4, "lon"    # D

    .line 2000
    iput-object p1, p0, Lorg/codeaurora/ims/ImsServiceSub$GeocoderTask;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1998
    const/4 p1, 0x1

    iput p1, p0, Lorg/codeaurora/ims/ImsServiceSub$GeocoderTask;->MAX_RESULTS:I

    .line 2001
    iput-wide p2, p0, Lorg/codeaurora/ims/ImsServiceSub$GeocoderTask;->latitude:D

    .line 2002
    iput-wide p4, p0, Lorg/codeaurora/ims/ImsServiceSub$GeocoderTask;->longitude:D

    .line 2003
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 2012
    const-string v0, " :: Error getting Addresses from GeoCoder!"

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub$GeocoderTask;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Executing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/codeaurora/ims/ImsServiceSub;->access$1500(Lorg/codeaurora/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 2013
    const/4 v1, 0x0

    .line 2014
    .local v1, "address":Landroid/location/Address;
    const/4 v2, 0x0

    .line 2015
    .local v2, "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    invoke-static {}, Landroid/location/Geocoder;->isPresent()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2016
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub$GeocoderTask;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    const-string v3, "handleGeolocationRequest :: Geocoder not present!"

    invoke-static {v0, v3}, Lorg/codeaurora/ims/ImsServiceSub;->access$100(Lorg/codeaurora/ims/ImsServiceSub;Ljava/lang/String;)V

    goto :goto_2

    .line 2018
    :cond_0
    new-instance v4, Landroid/location/Geocoder;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceSub$GeocoderTask;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsServiceSub;->access$5000(Lorg/codeaurora/ims/ImsServiceSub;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v4, v3}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    .line 2020
    .local v4, "gc":Landroid/location/Geocoder;
    :try_start_0
    iget-wide v5, p0, Lorg/codeaurora/ims/ImsServiceSub$GeocoderTask;->latitude:D

    iget-wide v7, p0, Lorg/codeaurora/ims/ImsServiceSub$GeocoderTask;->longitude:D

    const/4 v9, 0x1

    invoke-virtual/range {v4 .. v9}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 2025
    :goto_0
    goto :goto_1

    .line 2023
    :catch_0
    move-exception v3

    .line 2024
    .local v3, "iox":Ljava/io/IOException;
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceSub$GeocoderTask;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/codeaurora/ims/ImsServiceSub;->access$100(Lorg/codeaurora/ims/ImsServiceSub;Ljava/lang/String;)V

    goto :goto_1

    .line 2021
    .end local v3    # "iox":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 2022
    .local v3, "iex":Ljava/lang/IllegalArgumentException;
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceSub$GeocoderTask;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " :: Invalid latitude or longitude value!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/codeaurora/ims/ImsServiceSub;->access$100(Lorg/codeaurora/ims/ImsServiceSub;Ljava/lang/String;)V

    .end local v3    # "iex":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .line 2026
    :goto_1
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2032
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/location/Address;

    goto :goto_2

    .line 2034
    :cond_1
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceSub$GeocoderTask;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lorg/codeaurora/ims/ImsServiceSub;->access$100(Lorg/codeaurora/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 2037
    .end local v4    # "gc":Landroid/location/Geocoder;
    :goto_2
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub$GeocoderTask;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    iget-object v5, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-wide v6, p0, Lorg/codeaurora/ims/ImsServiceSub$GeocoderTask;->latitude:D

    iget-wide v8, p0, Lorg/codeaurora/ims/ImsServiceSub$GeocoderTask;->longitude:D

    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub$GeocoderTask;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    .line 2038
    invoke-static {v0}, Lorg/codeaurora/ims/ImsServiceSub;->access$1600(Lorg/codeaurora/ims/ImsServiceSub;)Landroid/os/Handler;

    move-result-object v0

    const/16 v3, 0x16

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    .line 2037
    move-object v10, v1

    invoke-virtual/range {v5 .. v11}, Lorg/codeaurora/ims/ImsSenderRxr;->sendGeolocationInfo(DDLandroid/location/Address;Landroid/os/Message;)V

    .line 2039
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 2007
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GeocoderTask [lat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/codeaurora/ims/ImsServiceSub$GeocoderTask;->latitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " | long="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/codeaurora/ims/ImsServiceSub$GeocoderTask;->longitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
