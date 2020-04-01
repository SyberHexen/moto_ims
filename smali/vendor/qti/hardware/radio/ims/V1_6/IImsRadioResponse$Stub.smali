.class public abstract Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;
.super Landroid/os/HwBinder;
.source "IImsRadioResponse.java"

# interfaces
.implements Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1225
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 1228
    return-object p0
.end method

.method public debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "fd"    # Landroid/os/NativeHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/NativeHandle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1246
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 1288
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1289
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 1290
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 1291
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 1292
    return-object v0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 1258
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x7

    new-array v1, v1, [[B

    const/16 v2, 0x20

    new-array v3, v2, [B

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_1

    const/4 v4, 0x1

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_2

    const/4 v4, 0x2

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_3

    const/4 v4, 0x3

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_4

    const/4 v4, 0x4

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_5

    const/4 v4, 0x5

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_6

    const/4 v3, 0x6

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        -0x1bt
        0x59t
        0x57t
        0x7at
        0x3et
        -0x6ct
        -0x77t
        0x0t
        -0x62t
        0x67t
        0x5bt
        -0x69t
        0x13t
        -0x3bt
        -0x4t
        0x4dt
        0x6ft
        -0x63t
        -0x25t
        -0x38t
        0x52t
        0x5et
        -0x36t
        -0x5t
        0x75t
        -0x17t
        0x38t
        0x72t
        -0x19t
        0x17t
        0x2et
        0x63t
    .end array-data

    :array_2
    .array-data 1
        -0x2ct
        -0x25t
        0x28t
        -0x2bt
        0x78t
        0x61t
        0x74t
        0x30t
        -0x3t
        0x13t
        -0x3t
        -0x2ct
        0x4bt
        -0x67t
        -0x26t
        0x66t
        0x4dt
        -0x5dt
        0x11t
        0x42t
        0x3dt
        -0x33t
        0x77t
        -0x46t
        0x6et
        0x13t
        0x25t
        0x6t
        0x42t
        0x2ft
        0x64t
        -0x20t
    .end array-data

    :array_3
    .array-data 1
        0x26t
        0x42t
        0x61t
        0x79t
        0x73t
        -0x72t
        0x56t
        0x2bt
        0x63t
        0x36t
        -0x3et
        0x1ft
        -0x58t
        0x7dt
        -0x2at
        0x3at
        0x61t
        -0xdt
        0x39t
        -0xdt
        -0x61t
        0x54t
        -0x23t
        -0x4et
        0x1bt
        0x6bt
        -0x71t
        -0x55t
        0x3bt
        -0x4ct
        -0x76t
        -0x6et
    .end array-data

    :array_4
    .array-data 1
        -0x4at
        0x3ct
        0x39t
        0x7ft
        -0x3bt
        0x21t
        0x65t
        0x18t
        -0x18t
        0x15t
        0x53t
        -0x6dt
        -0x38t
        -0x58t
        0x4t
        0xdt
        0x21t
        0x4et
        -0x60t
        0x5t
        -0x51t
        0x49t
        -0x46t
        0x0t
        -0x5dt
        -0x61t
        -0x17t
        -0x35t
        0x67t
        0x27t
        0x62t
        0x22t
    .end array-data

    :array_5
    .array-data 1
        0x1dt
        -0x24t
        -0x7bt
        0x29t
        -0x2at
        0x7at
        0x24t
        0x7bt
        0x60t
        -0x66t
        0x59t
        -0x41t
        -0x60t
        0x21t
        -0x25t
        0x62t
        -0x4t
        -0x1at
        0x23t
        0xdt
        0x2at
        0x3t
        0x3at
        -0x1ct
        -0x5ft
        -0x36t
        -0x52t
        -0x35t
        -0x49t
        0x26t
        -0x62t
        0x4dt
    .end array-data

    :array_6
    .array-data 1
        -0x14t
        0x7ft
        -0x29t
        -0x62t
        -0x30t
        0x2dt
        -0x6t
        -0x7bt
        -0x44t
        0x49t
        -0x6ct
        0x26t
        -0x53t
        -0x52t
        0x3et
        -0x42t
        0x23t
        -0x11t
        0x5t
        0x24t
        -0xdt
        -0x33t
        0x69t
        0x57t
        0x13t
        -0x6dt
        0x24t
        -0x48t
        0x3bt
        0x18t
        -0x36t
        0x4ct
    .end array-data
.end method

.method public final interfaceChain()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1233
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.qti.hardware.radio.ims@1.6::IImsRadioResponse"

    const-string v2, "vendor.qti.hardware.radio.ims@1.5::IImsRadioResponse"

    const-string v3, "vendor.qti.hardware.radio.ims@1.4::IImsRadioResponse"

    const-string v4, "vendor.qti.hardware.radio.ims@1.3::IImsRadioResponse"

    const-string v5, "vendor.qti.hardware.radio.ims@1.2::IImsRadioResponse"

    const-string v6, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    const-string v7, "android.hidl.base@1.0::IBase"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 1252
    const-string v0, "vendor.qti.hardware.radio.ims@1.6::IImsRadioResponse"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 1276
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 1298
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 1300
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 15
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1328
    move-object v6, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    const-string v0, "vendor.qti.hardware.radio.ims@1.5::IImsRadioResponse"

    const-string v1, "vendor.qti.hardware.radio.ims@1.4::IImsRadioResponse"

    const-string v2, "vendor.qti.hardware.radio.ims@1.3::IImsRadioResponse"

    const-string v3, "vendor.qti.hardware.radio.ims@1.6::IImsRadioResponse"

    const-string v4, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    const/high16 v5, -0x80000000

    const/4 v9, 0x0

    const/4 v10, 0x1

    packed-switch p1, :pswitch_data_0

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_7

    .line 2291
    :sswitch_0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    move v9, v10

    :cond_0
    move v0, v9

    .line 2292
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_78

    .line 2293
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2294
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2295
    goto/16 :goto_7

    .line 2278
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_1

    move v9, v10

    :cond_1
    move v1, v9

    .line 2279
    .local v1, "_hidl_is_oneway":Z
    if-eq v1, v10, :cond_2

    .line 2280
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2281
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2282
    goto/16 :goto_7

    .line 2283
    :cond_2
    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2285
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->notifySyspropsChanged()V

    .line 2286
    goto/16 :goto_7

    .line 2262
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    move v10, v9

    :goto_0
    move v1, v10

    .line 2263
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_4

    .line 2264
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2265
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2266
    goto/16 :goto_7

    .line 2267
    :cond_4
    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2269
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 2270
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2271
    invoke-virtual {v0, v8}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2272
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2273
    goto/16 :goto_7

    .line 2247
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_3
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    move v10, v9

    :goto_1
    move v1, v10

    .line 2248
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_6

    .line 2249
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2250
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2251
    goto/16 :goto_7

    .line 2252
    :cond_6
    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2254
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->ping()V

    .line 2255
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2256
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2257
    goto/16 :goto_7

    .line 2237
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7

    move v9, v10

    :cond_7
    move v0, v9

    .line 2238
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_78

    .line 2239
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2240
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2241
    goto/16 :goto_7

    .line 2224
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_8

    move v9, v10

    :cond_8
    move v1, v9

    .line 2225
    .restart local v1    # "_hidl_is_oneway":Z
    if-eq v1, v10, :cond_9

    .line 2226
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2227
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2228
    goto/16 :goto_7

    .line 2229
    :cond_9
    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2231
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->setHALInstrumentation()V

    .line 2232
    goto/16 :goto_7

    .line 2185
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_a

    goto :goto_2

    :cond_a
    move v10, v9

    :goto_2
    move v1, v10

    .line 2186
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_b

    .line 2187
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2188
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2189
    goto/16 :goto_7

    .line 2190
    :cond_b
    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2192
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 2193
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2195
    new-instance v2, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 2197
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2198
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 2199
    const-wide/16 v4, 0xc

    invoke-virtual {v2, v4, v5, v9}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 2200
    new-instance v4, Landroid/os/HwBlob;

    mul-int/lit8 v5, v3, 0x20

    invoke-direct {v4, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 2201
    .local v4, "childBlob":Landroid/os/HwBlob;
    const/4 v5, 0x0

    .local v5, "_hidl_index_0":I
    :goto_3
    if-ge v5, v3, :cond_d

    .line 2203
    mul-int/lit8 v9, v5, 0x20

    int-to-long v9, v9

    .line 2204
    .local v9, "_hidl_array_offset_1":J
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    .line 2206
    .local v11, "_hidl_array_item_1":[B
    if-eqz v11, :cond_c

    array-length v12, v11

    const/16 v13, 0x20

    if-ne v12, v13, :cond_c

    .line 2210
    invoke-virtual {v4, v9, v10, v11}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 2211
    nop

    .line 2201
    .end local v9    # "_hidl_array_offset_1":J
    .end local v11    # "_hidl_array_item_1":[B
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 2207
    .restart local v9    # "_hidl_array_offset_1":J
    .restart local v11    # "_hidl_array_item_1":[B
    :cond_c
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string v13, "Array element is not of the expected length"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 2214
    .end local v5    # "_hidl_index_0":I
    .end local v9    # "_hidl_array_offset_1":J
    .end local v11    # "_hidl_array_item_1":[B
    :cond_d
    const-wide/16 v9, 0x0

    invoke-virtual {v2, v9, v10, v4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 2216
    .end local v3    # "_hidl_vec_size":I
    .end local v4    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 2218
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2219
    goto/16 :goto_7

    .line 2169
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_7
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_e

    goto :goto_4

    :cond_e
    move v10, v9

    :goto_4
    move v1, v10

    .line 2170
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_f

    .line 2171
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2172
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2173
    goto/16 :goto_7

    .line 2174
    :cond_f
    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2176
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 2177
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2178
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2179
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2180
    goto/16 :goto_7

    .line 2152
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_8
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_10

    goto :goto_5

    :cond_10
    move v10, v9

    :goto_5
    move v1, v10

    .line 2153
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_11

    .line 2154
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2155
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2156
    goto/16 :goto_7

    .line 2157
    :cond_11
    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2159
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 2160
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 2161
    .local v2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 2162
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2163
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2164
    goto/16 :goto_7

    .line 2136
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_9
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_12

    goto :goto_6

    :cond_12
    move v10, v9

    :goto_6
    move v1, v10

    .line 2137
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_13

    .line 2138
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2139
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2140
    goto/16 :goto_7

    .line 2141
    :cond_13
    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2143
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 2144
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2145
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 2146
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2147
    goto/16 :goto_7

    .line 2120
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_14

    move v9, v10

    :cond_14
    move v0, v9

    .line 2121
    .local v0, "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_15

    .line 2122
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2123
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2124
    goto/16 :goto_7

    .line 2125
    :cond_15
    invoke-virtual {v7, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2127
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2128
    .local v1, "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2129
    .local v2, "errorCode":I
    invoke-static/range {p2 .. p2}, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v3

    .line 2130
    .local v3, "srvStatusList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;>;"
    invoke-virtual {p0, v1, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->queryServiceStatusResponse_1_6(IILjava/util/ArrayList;)V

    .line 2131
    goto/16 :goto_7

    .line 2103
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "token":I
    .end local v2    # "errorCode":I
    .end local v3    # "srvStatusList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;>;"
    :pswitch_1
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_16

    move v9, v10

    :cond_16
    move v0, v9

    .line 2104
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_17

    .line 2105
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2106
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2107
    goto/16 :goto_7

    .line 2108
    :cond_17
    invoke-virtual {v7, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2110
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2111
    .restart local v1    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2112
    .restart local v2    # "errorCode":I
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;-><init>()V

    .line 2113
    .local v3, "registration":Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;
    invoke-virtual {v3, v7}, Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2114
    invoke-virtual {p0, v1, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->getRegistrationResponse_1_6(IILvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;)V

    .line 2115
    goto/16 :goto_7

    .line 2086
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "token":I
    .end local v2    # "errorCode":I
    .end local v3    # "registration":Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;
    :pswitch_2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_18

    move v9, v10

    :cond_18
    move v0, v9

    .line 2087
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_19

    .line 2088
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2089
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2090
    goto/16 :goto_7

    .line 2091
    :cond_19
    invoke-virtual {v7, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2093
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2094
    .restart local v1    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2095
    .restart local v2    # "errorCode":I
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;-><init>()V

    .line 2096
    .local v3, "config":Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;
    invoke-virtual {v3, v7}, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2097
    invoke-virtual {p0, v1, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->setConfigResponse_1_6(IILvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;)V

    .line 2098
    goto/16 :goto_7

    .line 2069
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "token":I
    .end local v2    # "errorCode":I
    .end local v3    # "config":Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;
    :pswitch_3
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_1a

    move v9, v10

    :cond_1a
    move v1, v9

    .line 2070
    .local v1, "_hidl_is_oneway":Z
    if-eq v1, v10, :cond_1b

    .line 2071
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2072
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2073
    goto/16 :goto_7

    .line 2074
    :cond_1b
    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2076
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2077
    .local v0, "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2078
    .local v2, "msgRef":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 2079
    .local v3, "smsStatus":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 2080
    .local v4, "reason":I
    invoke-virtual {p0, v0, v2, v3, v4}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->sendImsSmsResponse_1_5(IIII)V

    .line 2081
    goto/16 :goto_7

    .line 2052
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "msgRef":I
    .end local v3    # "smsStatus":I
    .end local v4    # "reason":I
    :pswitch_4
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_1c

    move v9, v10

    :cond_1c
    move v1, v9

    .line 2053
    .restart local v1    # "_hidl_is_oneway":Z
    if-eq v1, v10, :cond_1d

    .line 2054
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2055
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2056
    goto/16 :goto_7

    .line 2057
    :cond_1d
    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2059
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2060
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2061
    .local v2, "errorCode":I
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_5/CallForwardStatusInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_5/CallForwardStatusInfo;-><init>()V

    .line 2062
    .local v3, "callForwardStatus":Lvendor/qti/hardware/radio/ims/V1_5/CallForwardStatusInfo;
    invoke-virtual {v3, v7}, Lvendor/qti/hardware/radio/ims/V1_5/CallForwardStatusInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2063
    invoke-virtual {p0, v0, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->setCallForwardStatusResponse(IILvendor/qti/hardware/radio/ims/V1_5/CallForwardStatusInfo;)V

    .line 2064
    goto/16 :goto_7

    .line 2036
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    .end local v3    # "callForwardStatus":Lvendor/qti/hardware/radio/ims/V1_5/CallForwardStatusInfo;
    :pswitch_5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1e

    move v9, v10

    :cond_1e
    move v0, v9

    .line 2037
    .local v0, "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_1f

    .line 2038
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2039
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2040
    goto/16 :goto_7

    .line 2041
    :cond_1f
    invoke-virtual {v7, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2043
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2044
    .local v1, "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2045
    .local v2, "msisdn":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v3

    .line 2046
    .local v3, "virtualLineInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v1, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->queryVirtualLineInfoResponse(ILjava/lang/String;Ljava/util/ArrayList;)V

    .line 2047
    goto/16 :goto_7

    .line 2021
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "token":I
    .end local v2    # "msisdn":Ljava/lang/String;
    .end local v3    # "virtualLineInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_20

    move v9, v10

    :cond_20
    move v0, v9

    .line 2022
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_21

    .line 2023
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2024
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2025
    goto/16 :goto_7

    .line 2026
    :cond_21
    invoke-virtual {v7, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2028
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2029
    .restart local v1    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2030
    .local v2, "errorCode":I
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->registerMultiIdentityLinesResponse(II)V

    .line 2031
    goto/16 :goto_7

    .line 2004
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "token":I
    .end local v2    # "errorCode":I
    :pswitch_7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_22

    move v9, v10

    :cond_22
    move v0, v9

    .line 2005
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_23

    .line 2006
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2007
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2008
    goto/16 :goto_7

    .line 2009
    :cond_23
    invoke-virtual {v7, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2011
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2012
    .restart local v1    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2013
    .restart local v2    # "errorCode":I
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;-><init>()V

    .line 2014
    .local v3, "colrInfo":Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;
    invoke-virtual {v3, v7}, Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2015
    invoke-virtual {p0, v1, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->getColrResponse_1_3(IILvendor/qti/hardware/radio/ims/V1_3/ColrInfo;)V

    .line 2016
    goto/16 :goto_7

    .line 1987
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "token":I
    .end local v2    # "errorCode":I
    .end local v3    # "colrInfo":Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;
    :pswitch_8
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_24

    move v9, v10

    :cond_24
    move v0, v9

    .line 1988
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_25

    .line 1989
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1990
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1991
    goto/16 :goto_7

    .line 1992
    :cond_25
    invoke-virtual {v7, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1994
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1995
    .restart local v1    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1996
    .restart local v2    # "errorCode":I
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;-><init>()V

    .line 1997
    .local v3, "suppServiceStatus":Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;
    invoke-virtual {v3, v7}, Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1998
    invoke-virtual {p0, v1, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->suppServiceStatusResponse_1_3(IILvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;)V

    .line 1999
    goto/16 :goto_7

    .line 1970
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "token":I
    .end local v2    # "errorCode":I
    .end local v3    # "suppServiceStatus":Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;
    :pswitch_9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_26

    move v9, v10

    :cond_26
    move v0, v9

    .line 1971
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_27

    .line 1972
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1973
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1974
    goto/16 :goto_7

    .line 1975
    :cond_27
    const-string v1, "vendor.qti.hardware.radio.ims@1.2::IImsRadioResponse"

    invoke-virtual {v7, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1977
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1978
    .restart local v1    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1979
    .local v2, "msgeRef":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 1980
    .local v3, "smsStatus":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 1981
    .restart local v4    # "reason":I
    invoke-virtual {p0, v1, v2, v3, v4}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->sendImsSmsResponse(IIII)V

    .line 1982
    goto/16 :goto_7

    .line 1953
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "token":I
    .end local v2    # "msgeRef":I
    .end local v3    # "smsStatus":I
    .end local v4    # "reason":I
    :pswitch_a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_28

    move v9, v10

    :cond_28
    move v0, v9

    .line 1954
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_29

    .line 1955
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1956
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1957
    goto/16 :goto_7

    .line 1958
    :cond_29
    invoke-virtual {v7, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1960
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1961
    .restart local v1    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1962
    .local v2, "errorCode":I
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;-><init>()V

    .line 1963
    .local v3, "ssacInfo":Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;
    invoke-virtual {v3, v7}, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1964
    invoke-virtual {p0, v1, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->querySsacStatusResponse(IILvendor/qti/hardware/radio/ims/V1_0/SsacInfo;)V

    .line 1965
    goto/16 :goto_7

    .line 1936
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "token":I
    .end local v2    # "errorCode":I
    .end local v3    # "ssacInfo":Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;
    :pswitch_b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_2a

    move v9, v10

    :cond_2a
    move v0, v9

    .line 1937
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_2b

    .line 1938
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1939
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1940
    goto/16 :goto_7

    .line 1941
    :cond_2b
    invoke-virtual {v7, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1943
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1944
    .restart local v1    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1945
    .restart local v2    # "errorCode":I
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/VopsInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/VopsInfo;-><init>()V

    .line 1946
    .local v3, "vopsInfo":Lvendor/qti/hardware/radio/ims/V1_0/VopsInfo;
    invoke-virtual {v3, v7}, Lvendor/qti/hardware/radio/ims/V1_0/VopsInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1947
    invoke-virtual {p0, v1, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->queryVopsStatusResponse(IILvendor/qti/hardware/radio/ims/V1_0/VopsInfo;)V

    .line 1948
    goto/16 :goto_7

    .line 1920
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "token":I
    .end local v2    # "errorCode":I
    .end local v3    # "vopsInfo":Lvendor/qti/hardware/radio/ims/V1_0/VopsInfo;
    :pswitch_c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_2c

    move v9, v10

    :cond_2c
    move v0, v9

    .line 1921
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_2d

    .line 1922
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1923
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1924
    goto/16 :goto_7

    .line 1925
    :cond_2d
    invoke-virtual {v7, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1927
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1928
    .restart local v1    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1929
    .restart local v2    # "errorCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 1930
    .local v3, "voltePref":I
    invoke-virtual {p0, v1, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->queryVoltePrefResponse(III)V

    .line 1931
    goto/16 :goto_7

    .line 1905
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "token":I
    .end local v2    # "errorCode":I
    .end local v3    # "voltePref":I
    :pswitch_d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_2e

    move v9, v10

    :cond_2e
    move v0, v9

    .line 1906
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_2f

    .line 1907
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1908
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1909
    goto/16 :goto_7

    .line 1910
    :cond_2f
    invoke-virtual {v7, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1912
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1913
    .restart local v1    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1914
    .restart local v2    # "errorCode":I
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->updateVoltePrefResponse(II)V

    .line 1915
    goto/16 :goto_7

    .line 1890
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "token":I
    .end local v2    # "errorCode":I
    :pswitch_e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_30

    move v9, v10

    :cond_30
    move v0, v9

    .line 1891
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_31

    .line 1892
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1893
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1894
    goto/16 :goto_7

    .line 1895
    :cond_31
    invoke-virtual {v7, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1897
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1898
    .restart local v1    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1899
    .restart local v2    # "errorCode":I
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->cancelModifyCallResponse(II)V

    .line 1900
    goto/16 :goto_7

    .line 1875
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "token":I
    .end local v2    # "errorCode":I
    :pswitch_f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_32

    move v9, v10

    :cond_32
    move v0, v9

    .line 1876
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_33

    .line 1877
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1878
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1879
    goto/16 :goto_7

    .line 1880
    :cond_33
    invoke-virtual {v7, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1882
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1883
    .restart local v1    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1884
    .restart local v2    # "errorCode":I
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->sendRttMessageResponse(II)V

    .line 1885
    goto/16 :goto_7

    .line 1858
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "token":I
    .end local v2    # "errorCode":I
    :pswitch_10
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_34

    move v9, v10

    :cond_34
    move v0, v9

    .line 1859
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_35

    .line 1860
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1861
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1862
    goto/16 :goto_7

    .line 1863
    :cond_35
    invoke-virtual {v7, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1865
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1866
    .restart local v1    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1867
    .restart local v2    # "errorCode":I
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;-><init>()V

    .line 1868
    .local v3, "subConfigInfo":Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;
    invoke-virtual {v3, v7}, Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1869
    invoke-virtual {p0, v1, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->getImsSubConfigResponse(IILvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;)V

    .line 1870
    goto/16 :goto_7

    .line 1843
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "token":I
    .end local v2    # "errorCode":I
    .end local v3    # "subConfigInfo":Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;
    :pswitch_11
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_36

    move v9, v10

    :cond_36
    move v0, v9

    .line 1844
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_37

    .line 1845
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1846
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1847
    goto/16 :goto_7

    .line 1848
    :cond_37
    invoke-virtual {v7, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1850
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1851
    .restart local v1    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1852
    .restart local v2    # "errorCode":I
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->sendGeolocationInfoResponse(II)V

    .line 1853
    goto/16 :goto_7

    .line 1828
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "token":I
    .end local v2    # "errorCode":I
    :pswitch_12
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_38

    move v9, v10

    :cond_38
    move v0, v9

    .line 1829
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_39

    .line 1830
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1831
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1832
    goto/16 :goto_7

    .line 1833
    :cond_39
    invoke-virtual {v7, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1835
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1836
    .restart local v1    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1837
    .restart local v2    # "errorCode":I
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->deflectCallResponse(II)V

    .line 1838
    goto/16 :goto_7

    .line 1813
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "token":I
    .end local v2    # "errorCode":I
    :pswitch_13
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_3a

    move v9, v10

    :cond_3a
    move v0, v9

    .line 1814
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_3b

    .line 1815
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1816
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1817
    goto/16 :goto_7

    .line 1818
    :cond_3b
    invoke-virtual {v7, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1820
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1821
    .restart local v1    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1822
    .restart local v2    # "errorCode":I
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->addParticipantResponse(II)V

    .line 1823
    goto/16 :goto_7

    .line 1797
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "token":I
    .end local v2    # "errorCode":I
    :pswitch_14
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_3c

    move v9, v10

    :cond_3c
    move v0, v9

    .line 1798
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_3d

    .line 1799
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1800
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1801
    goto/16 :goto_7

    .line 1802
    :cond_3d
    invoke-virtual {v7, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1804
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1805
    .restart local v1    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1806
    .restart local v2    # "errorCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v3

    .line 1807
    .local v3, "packetErrorCount":J
    invoke-virtual {p0, v1, v2, v3, v4}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->getRtpErrorStatisticsResponse(IIJ)V

    .line 1808
    goto/16 :goto_7

    .line 1781
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "token":I
    .end local v2    # "errorCode":I
    .end local v3    # "packetErrorCount":J
    :pswitch_15
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_3e

    move v9, v10

    :cond_3e
    move v0, v9

    .line 1782
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_3f

    .line 1783
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1784
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1785
    goto/16 :goto_7

    .line 1786
    :cond_3f
    invoke-virtual {v7, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1788
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1789
    .restart local v1    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1790
    .restart local v2    # "errorCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v3

    .line 1791
    .local v3, "packetCount":J
    invoke-virtual {p0, v1, v2, v3, v4}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->getRtpStatisticsResponse(IIJ)V

    .line 1792
    goto/16 :goto_7

    .line 1765
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "token":I
    .end local v2    # "errorCode":I
    .end local v3    # "packetCount":J
    :pswitch_16
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_40

    move v9, v10

    :cond_40
    move v0, v9

    .line 1766
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_41

    .line 1767
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1768
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1769
    goto/16 :goto_7

    .line 1770
    :cond_41
    invoke-virtual {v7, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1772
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1773
    .restart local v1    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1774
    .restart local v2    # "errorCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 1775
    .local v3, "serviceStatus":I
    invoke-virtual {p0, v1, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->setSuppServiceNotificationResponse(III)V

    .line 1776
    goto/16 :goto_7

    .line 1750
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "token":I
    .end local v2    # "errorCode":I
    .end local v3    # "serviceStatus":I
    :pswitch_17
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_42

    move v9, v10

    :cond_42
    move v0, v9

    .line 1751
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_43

    .line 1752
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1753
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1754
    goto/16 :goto_7

    .line 1755
    :cond_43
    invoke-virtual {v7, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1757
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1758
    .restart local v1    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1759
    .restart local v2    # "errorCode":I
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->explicitCallTransferResponse(II)V

    .line 1760
    goto/16 :goto_7

    .line 1731
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "token":I
    .end local v2    # "errorCode":I
    :pswitch_18
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_44

    move v9, v10

    .line 1732
    .local v9, "_hidl_is_oneway":Z
    :cond_44
    if-eq v9, v10, :cond_45

    .line 1733
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1734
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1735
    goto/16 :goto_7

    .line 1736
    :cond_45
    invoke-virtual {v7, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1738
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 1739
    .local v10, "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 1740
    .local v11, "errorCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 1741
    .local v12, "serviceStatus":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v13

    .line 1742
    .local v13, "serviceClass":I
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;-><init>()V

    move-object v14, v0

    .line 1743
    .local v14, "errorDetails":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    invoke-virtual {v14, v7}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1744
    move-object v0, p0

    move v1, v10

    move v2, v11

    move v3, v12

    move v4, v13

    move-object v5, v14

    invoke-virtual/range {v0 .. v5}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->getCallWaitingResponse(IIIILvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V

    .line 1745
    goto/16 :goto_7

    .line 1713
    .end local v9    # "_hidl_is_oneway":Z
    .end local v10    # "token":I
    .end local v11    # "errorCode":I
    .end local v12    # "serviceStatus":I
    .end local v13    # "serviceClass":I
    .end local v14    # "errorDetails":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    :pswitch_19
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_46

    move v9, v10

    :cond_46
    move v0, v9

    .line 1714
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_47

    .line 1715
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1716
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1717
    goto/16 :goto_7

    .line 1718
    :cond_47
    invoke-virtual {v7, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1720
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1721
    .restart local v1    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1722
    .restart local v2    # "errorCode":I
    invoke-static/range {p2 .. p2}, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1723
    .local v3, "callForwardInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;>;"
    new-instance v4, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    invoke-direct {v4}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;-><init>()V

    .line 1724
    .local v4, "errorDetails":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    invoke-virtual {v4, v7}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1725
    invoke-virtual {p0, v1, v2, v3, v4}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->queryCallForwardStatusResponse(IILjava/util/ArrayList;Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V

    .line 1726
    goto/16 :goto_7

    .line 1698
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "token":I
    .end local v2    # "errorCode":I
    .end local v3    # "callForwardInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;>;"
    .end local v4    # "errorDetails":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    :pswitch_1a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_48

    move v9, v10

    :cond_48
    move v0, v9

    .line 1699
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_49

    .line 1700
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1701
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1702
    goto/16 :goto_7

    .line 1703
    :cond_49
    invoke-virtual {v7, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1705
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1706
    .restart local v1    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1707
    .restart local v2    # "errorCode":I
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->modifyCallConfirmResponse(II)V

    .line 1708
    goto/16 :goto_7

    .line 1683
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "token":I
    .end local v2    # "errorCode":I
    :pswitch_1b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_4a

    move v9, v10

    :cond_4a
    move v0, v9

    .line 1684
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_4b

    .line 1685
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1686
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1687
    goto/16 :goto_7

    .line 1688
    :cond_4b
    invoke-virtual {v7, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1690
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1691
    .restart local v1    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1692
    .restart local v2    # "errorCode":I
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->modifyCallInitiateResponse(II)V

    .line 1693
    goto/16 :goto_7

    .line 1668
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "token":I
    .end local v2    # "errorCode":I
    :pswitch_1c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_4c

    move v9, v10

    :cond_4c
    move v0, v9

    .line 1669
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_4d

    .line 1670
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1671
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1672
    goto/16 :goto_7

    .line 1673
    :cond_4d
    invoke-virtual {v7, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1675
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1676
    .restart local v1    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1677
    .restart local v2    # "errorCode":I
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->setUiTTYModeResponse(II)V

    .line 1678
    goto/16 :goto_7

    .line 1653
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "token":I
    .end local v2    # "errorCode":I
    :pswitch_1d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_4e

    move v9, v10

    :cond_4e
    move v0, v9

    .line 1654
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_4f

    .line 1655
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1656
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1657
    goto/16 :goto_7

    .line 1658
    :cond_4f
    invoke-virtual {v7, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1660
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1661
    .restart local v1    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1662
    .restart local v2    # "errorCode":I
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->stopDtmfResponse(II)V

    .line 1663
    goto/16 :goto_7

    .line 1638
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "token":I
    .end local v2    # "errorCode":I
    :pswitch_1e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_50

    move v9, v10

    :cond_50
    move v0, v9

    .line 1639
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_51

    .line 1640
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1641
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1642
    goto/16 :goto_7

    .line 1643
    :cond_51
    invoke-virtual {v7, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1645
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1646
    .restart local v1    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1647
    .restart local v2    # "errorCode":I
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->startDtmfResponse(II)V

    .line 1648
    goto/16 :goto_7

    .line 1623
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "token":I
    .end local v2    # "errorCode":I
    :pswitch_1f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_52

    move v9, v10

    :cond_52
    move v0, v9

    .line 1624
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_53

    .line 1625
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1626
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1627
    goto/16 :goto_7

    .line 1628
    :cond_53
    invoke-virtual {v7, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1630
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1631
    .restart local v1    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1632
    .restart local v2    # "errorCode":I
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->sendDtmfResponse(II)V

    .line 1633
    goto/16 :goto_7

    .line 1608
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "token":I
    .end local v2    # "errorCode":I
    :pswitch_20
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_54

    move v9, v10

    :cond_54
    move v0, v9

    .line 1609
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_55

    .line 1610
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1611
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1612
    goto/16 :goto_7

    .line 1613
    :cond_55
    invoke-virtual {v7, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1615
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1616
    .restart local v1    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1617
    .restart local v2    # "errorCode":I
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->exitEmergencyCallbackModeResponse(II)V

    .line 1618
    goto/16 :goto_7

    .line 1591
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "token":I
    .end local v2    # "errorCode":I
    :pswitch_21
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_56

    move v9, v10

    :cond_56
    move v0, v9

    .line 1592
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_57

    .line 1593
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1594
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1595
    goto/16 :goto_7

    .line 1596
    :cond_57
    invoke-virtual {v7, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1598
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1599
    .restart local v1    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1600
    .restart local v2    # "errorCode":I
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;-><init>()V

    .line 1601
    .local v3, "colrInfo":Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;
    invoke-virtual {v3, v7}, Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1602
    invoke-virtual {p0, v1, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->getColrResponse(IILvendor/qti/hardware/radio/ims/V1_0/ColrInfo;)V

    .line 1603
    goto/16 :goto_7

    .line 1576
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "token":I
    .end local v2    # "errorCode":I
    .end local v3    # "colrInfo":Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;
    :pswitch_22
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_58

    move v9, v10

    :cond_58
    move v0, v9

    .line 1577
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_59

    .line 1578
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1579
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1580
    goto/16 :goto_7

    .line 1581
    :cond_59
    invoke-virtual {v7, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1583
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1584
    .restart local v1    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1585
    .restart local v2    # "errorCode":I
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->setClirResponse(II)V

    .line 1586
    goto/16 :goto_7

    .line 1558
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "token":I
    .end local v2    # "errorCode":I
    :pswitch_23
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_5a

    move v9, v10

    :cond_5a
    move v0, v9

    .line 1559
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_5b

    .line 1560
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1561
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1562
    goto/16 :goto_7

    .line 1563
    :cond_5b
    invoke-virtual {v7, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1565
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1566
    .restart local v1    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1567
    .restart local v2    # "errorCode":I
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;-><init>()V

    .line 1568
    .local v3, "clirInfo":Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;
    invoke-virtual {v3, v7}, Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1569
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v4

    .line 1570
    .local v4, "hasClirInfo":Z
    invoke-virtual {p0, v1, v2, v3, v4}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->getClirResponse(IILvendor/qti/hardware/radio/ims/V1_0/ClirInfo;Z)V

    .line 1571
    goto/16 :goto_7

    .line 1541
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "token":I
    .end local v2    # "errorCode":I
    .end local v3    # "clirInfo":Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;
    .end local v4    # "hasClirInfo":Z
    :pswitch_24
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_5c

    move v9, v10

    :cond_5c
    move v0, v9

    .line 1542
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_5d

    .line 1543
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1544
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1545
    goto/16 :goto_7

    .line 1546
    :cond_5d
    invoke-virtual {v7, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1548
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1549
    .restart local v1    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1550
    .restart local v2    # "errorCode":I
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/ClipProvisionStatus;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/ClipProvisionStatus;-><init>()V

    .line 1551
    .local v3, "clipProvisionStatus":Lvendor/qti/hardware/radio/ims/V1_0/ClipProvisionStatus;
    invoke-virtual {v3, v7}, Lvendor/qti/hardware/radio/ims/V1_0/ClipProvisionStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1552
    invoke-virtual {p0, v1, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->getClipResponse(IILvendor/qti/hardware/radio/ims/V1_0/ClipProvisionStatus;)V

    .line 1553
    goto/16 :goto_7

    .line 1524
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "token":I
    .end local v2    # "errorCode":I
    .end local v3    # "clipProvisionStatus":Lvendor/qti/hardware/radio/ims/V1_0/ClipProvisionStatus;
    :pswitch_25
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_5e

    move v9, v10

    :cond_5e
    move v0, v9

    .line 1525
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_5f

    .line 1526
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1527
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1528
    goto/16 :goto_7

    .line 1529
    :cond_5f
    invoke-virtual {v7, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1531
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1532
    .restart local v1    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1533
    .restart local v2    # "errorCode":I
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;-><init>()V

    .line 1534
    .local v3, "errorInfo":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    invoke-virtual {v3, v7}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1535
    invoke-virtual {p0, v1, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->conferenceResponse(IILvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V

    .line 1536
    goto/16 :goto_7

    .line 1507
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "token":I
    .end local v2    # "errorCode":I
    .end local v3    # "errorInfo":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    :pswitch_26
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_60

    move v9, v10

    :cond_60
    move v0, v9

    .line 1508
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_61

    .line 1509
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1510
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1511
    goto/16 :goto_7

    .line 1512
    :cond_61
    invoke-virtual {v7, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1514
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1515
    .restart local v1    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1516
    .restart local v2    # "errorCode":I
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;-><init>()V

    .line 1517
    .local v3, "suppServiceStatus":Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;
    invoke-virtual {v3, v7}, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1518
    invoke-virtual {p0, v1, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->suppServiceStatusResponse(IILvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;)V

    .line 1519
    goto/16 :goto_7

    .line 1490
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "token":I
    .end local v2    # "errorCode":I
    .end local v3    # "suppServiceStatus":Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;
    :pswitch_27
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_62

    move v9, v10

    :cond_62
    move v0, v9

    .line 1491
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_63

    .line 1492
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1493
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1494
    goto/16 :goto_7

    .line 1495
    :cond_63
    invoke-virtual {v7, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1497
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1498
    .restart local v1    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1499
    .restart local v2    # "errorCode":I
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;-><init>()V

    .line 1500
    .local v3, "registration":Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;
    invoke-virtual {v3, v7}, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1501
    invoke-virtual {p0, v1, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->getRegistrationResponse(IILvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;)V

    .line 1502
    goto/16 :goto_7

    .line 1473
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "token":I
    .end local v2    # "errorCode":I
    .end local v3    # "registration":Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;
    :pswitch_28
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_64

    move v9, v10

    :cond_64
    move v0, v9

    .line 1474
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_65

    .line 1475
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1476
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1477
    goto/16 :goto_7

    .line 1478
    :cond_65
    invoke-virtual {v7, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1480
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1481
    .restart local v1    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1482
    .restart local v2    # "errorCode":I
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;-><init>()V

    .line 1483
    .local v3, "config":Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;
    invoke-virtual {v3, v7}, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1484
    invoke-virtual {p0, v1, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->getConfigResponse(IILvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;)V

    .line 1485
    goto/16 :goto_7

    .line 1456
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "token":I
    .end local v2    # "errorCode":I
    .end local v3    # "config":Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;
    :pswitch_29
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_66

    move v9, v10

    :cond_66
    move v0, v9

    .line 1457
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_67

    .line 1458
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1459
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1460
    goto/16 :goto_7

    .line 1461
    :cond_67
    invoke-virtual {v7, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1463
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1464
    .restart local v1    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1465
    .restart local v2    # "errorCode":I
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;-><init>()V

    .line 1466
    .restart local v3    # "config":Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;
    invoke-virtual {v3, v7}, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1467
    invoke-virtual {p0, v1, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->setConfigResponse(IILvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;)V

    .line 1468
    goto/16 :goto_7

    .line 1439
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "token":I
    .end local v2    # "errorCode":I
    .end local v3    # "config":Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;
    :pswitch_2a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_68

    move v9, v10

    :cond_68
    move v0, v9

    .line 1440
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_69

    .line 1441
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1442
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1443
    goto/16 :goto_7

    .line 1444
    :cond_69
    invoke-virtual {v7, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1446
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1447
    .restart local v1    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1448
    .restart local v2    # "errorCode":I
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;-><init>()V

    .line 1449
    .local v3, "sipError":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    invoke-virtual {v3, v7}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1450
    invoke-virtual {p0, v1, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->resumeResponse(IILvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V

    .line 1451
    goto/16 :goto_7

    .line 1422
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "token":I
    .end local v2    # "errorCode":I
    .end local v3    # "sipError":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    :pswitch_2b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_6a

    move v9, v10

    :cond_6a
    move v0, v9

    .line 1423
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_6b

    .line 1424
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1425
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1426
    goto/16 :goto_7

    .line 1427
    :cond_6b
    invoke-virtual {v7, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1429
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1430
    .restart local v1    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1431
    .restart local v2    # "errorCode":I
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;-><init>()V

    .line 1432
    .restart local v3    # "sipError":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    invoke-virtual {v3, v7}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1433
    invoke-virtual {p0, v1, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->holdResponse(IILvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V

    .line 1434
    goto/16 :goto_7

    .line 1407
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "token":I
    .end local v2    # "errorCode":I
    .end local v3    # "sipError":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    :pswitch_2c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_6c

    move v9, v10

    :cond_6c
    move v0, v9

    .line 1408
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_6d

    .line 1409
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1410
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1411
    goto/16 :goto_7

    .line 1412
    :cond_6d
    invoke-virtual {v7, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1414
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1415
    .restart local v1    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1416
    .restart local v2    # "errorCode":I
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->setServiceStatusResponse(II)V

    .line 1417
    goto/16 :goto_7

    .line 1391
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "token":I
    .end local v2    # "errorCode":I
    :pswitch_2d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_6e

    move v9, v10

    :cond_6e
    move v0, v9

    .line 1392
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_6f

    .line 1393
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1394
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1395
    goto/16 :goto_7

    .line 1396
    :cond_6f
    invoke-virtual {v7, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1398
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1399
    .restart local v1    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1400
    .restart local v2    # "errorCode":I
    invoke-static/range {p2 .. p2}, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1401
    .local v3, "srvStatusList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;>;"
    invoke-virtual {p0, v1, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->queryServiceStatusResponse(IILjava/util/ArrayList;)V

    .line 1402
    goto/16 :goto_7

    .line 1376
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "token":I
    .end local v2    # "errorCode":I
    .end local v3    # "srvStatusList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;>;"
    :pswitch_2e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_70

    move v9, v10

    :cond_70
    move v0, v9

    .line 1377
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_71

    .line 1378
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1379
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1380
    goto/16 :goto_7

    .line 1381
    :cond_71
    invoke-virtual {v7, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1383
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1384
    .restart local v1    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1385
    .restart local v2    # "errorCode":I
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->requestRegistrationChangeResponse(II)V

    .line 1386
    goto :goto_7

    .line 1361
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "token":I
    .end local v2    # "errorCode":I
    :pswitch_2f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_72

    move v9, v10

    :cond_72
    move v0, v9

    .line 1362
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_73

    .line 1363
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1364
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1365
    goto :goto_7

    .line 1366
    :cond_73
    invoke-virtual {v7, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1368
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1369
    .restart local v1    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1370
    .restart local v2    # "errorCode":I
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->hangupResponse(II)V

    .line 1371
    goto :goto_7

    .line 1346
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "token":I
    .end local v2    # "errorCode":I
    :pswitch_30
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_74

    move v9, v10

    :cond_74
    move v0, v9

    .line 1347
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_75

    .line 1348
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1349
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1350
    goto :goto_7

    .line 1351
    :cond_75
    invoke-virtual {v7, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1353
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1354
    .restart local v1    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1355
    .restart local v2    # "errorCode":I
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->answerResponse(II)V

    .line 1356
    goto :goto_7

    .line 1331
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "token":I
    .end local v2    # "errorCode":I
    :pswitch_31
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_76

    move v9, v10

    :cond_76
    move v0, v9

    .line 1332
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v10, :cond_77

    .line 1333
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1334
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1335
    goto :goto_7

    .line 1336
    :cond_77
    invoke-virtual {v7, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1338
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1339
    .restart local v1    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1340
    .restart local v2    # "errorCode":I
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->dialResponse(II)V

    .line 1341
    nop

    .line 2300
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "token":I
    .end local v2    # "errorCode":I
    :cond_78
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0xf43484e -> :sswitch_9
        0xf444247 -> :sswitch_8
        0xf445343 -> :sswitch_7
        0xf485348 -> :sswitch_6
        0xf494e54 -> :sswitch_5
        0xf4c5444 -> :sswitch_4
        0xf504e47 -> :sswitch_3
        0xf524546 -> :sswitch_2
        0xf535953 -> :sswitch_1
        0xf555444 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ping()V
    .locals 0

    .line 1282
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 1310
    const-string v0, "vendor.qti.hardware.radio.ims@1.6::IImsRadioResponse"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1311
    return-object p0

    .line 1313
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerAsService(Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1317
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->registerService(Ljava/lang/String;)V

    .line 1318
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 1272
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@Stub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;

    .line 1304
    const/4 v0, 0x1

    return v0
.end method
