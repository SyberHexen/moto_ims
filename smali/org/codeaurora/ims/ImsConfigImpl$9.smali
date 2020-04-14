.class Lorg/codeaurora/ims/ImsConfigImpl$9;
.super Ljava/lang/Object;
.source "ImsConfigImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/codeaurora/ims/ImsConfigImpl;->checkinVolteProvision(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsConfigImpl;

.field final synthetic val$event_code:I

.field final synthetic val$event_info:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsConfigImpl;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsConfigImpl;

    .line 1002
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$9;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    iput p2, p0, Lorg/codeaurora/ims/ImsConfigImpl$9;->val$event_code:I

    iput-object p3, p0, Lorg/codeaurora/ims/ImsConfigImpl$9;->val$event_info:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 1005
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$9;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsConfigImpl;->access$800(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1006
    const-string v0, "checkinVolteProvision: mImsMmTelManager null"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1007
    return-void

    .line 1017
    :cond_0
    const/4 v0, 0x0

    .line 1018
    .local v0, "user_setting":I
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$9;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsConfigImpl;->access$800(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ims/ImsMmTelManager;->isAdvancedCallingSettingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1019
    or-int/lit8 v0, v0, 0x1

    .line 1021
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$9;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsConfigImpl;->access$800(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ims/ImsMmTelManager;->isVoWiFiSettingEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1022
    or-int/lit8 v0, v0, 0x4

    .line 1024
    :cond_2
    if-eqz v0, :cond_3

    .line 1025
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$9;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsConfigImpl;->access$800(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ims/ImsMmTelManager;->isVtSettingEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1026
    or-int/lit8 v0, v0, 0x2

    .line 1038
    :cond_3
    const/4 v1, 0x0

    .line 1039
    .local v1, "dm_provision":I
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$9;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsConfigImpl;->access$600(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lorg/codeaurora/ims/ImsConfigImpl$9;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsConfigImpl;->access$1400(Lorg/codeaurora/ims/ImsConfigImpl;)I

    move-result v3

    const-string v4, "carrier_volte_provisioning_required_bool"

    invoke-static {v2, v3, v4}, Lorg/codeaurora/ims/ImsUtils;->getBooleanCarrierConfig(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1041
    or-int/lit8 v1, v1, 0x1

    .line 1043
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$9;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfigInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v3, v2, :cond_4

    .line 1045
    or-int/lit8 v1, v1, 0x2

    .line 1047
    :cond_4
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$9;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    const/16 v4, 0xb

    invoke-virtual {v2, v4}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfigInt(I)I

    move-result v2

    if-ne v3, v2, :cond_5

    .line 1049
    or-int/lit8 v1, v1, 0x4

    .line 1051
    :cond_5
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$9;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    const/16 v4, 0x19

    invoke-virtual {v2, v4}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfigInt(I)I

    move-result v2

    if-ne v3, v2, :cond_6

    .line 1053
    or-int/lit8 v1, v1, 0x8

    .line 1055
    :cond_6
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$9;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    const/16 v4, 0x1c

    invoke-virtual {v2, v4}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfigInt(I)I

    move-result v2

    if-ne v3, v2, :cond_7

    .line 1057
    or-int/lit8 v1, v1, 0x10

    .line 1059
    :cond_7
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$9;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    const/16 v4, 0x41

    invoke-virtual {v2, v4}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfigInt(I)I

    move-result v2

    if-ne v3, v2, :cond_8

    .line 1061
    or-int/lit8 v1, v1, 0x20

    .line 1065
    :cond_8
    const-string v2, "CALL_PERF_STATS"

    .line 1066
    .local v2, "CHECKIN_GROUP_TAG":Ljava/lang/String;
    const-string v3, "VolteProvisioning"

    .line 1067
    .local v3, "CHECKIN_EVENT_NAME":Ljava/lang/String;
    new-instance v10, Lorg/codeaurora/ims/CheckinEvent;

    .line 1070
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-string v5, "CALL_PERF_STATS"

    const-string v6, "VolteProvisioning"

    const-string v7, "1.0"

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lorg/codeaurora/ims/CheckinEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1072
    .local v4, "ce":Lorg/codeaurora/ims/CheckinEvent;
    :try_start_0
    const-string v5, "usr"

    invoke-virtual {v4, v5, v0}, Lorg/codeaurora/ims/CheckinEvent;->setValue(Ljava/lang/String;I)V

    .line 1073
    const-string v5, "dm"

    invoke-virtual {v4, v5, v1}, Lorg/codeaurora/ims/CheckinEvent;->setValue(Ljava/lang/String;I)V

    .line 1074
    iget v5, p0, Lorg/codeaurora/ims/ImsConfigImpl$9;->val$event_code:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_9

    .line 1075
    const-string v5, "evt"

    iget v6, p0, Lorg/codeaurora/ims/ImsConfigImpl$9;->val$event_code:I

    invoke-virtual {v4, v5, v6}, Lorg/codeaurora/ims/CheckinEvent;->setValue(Ljava/lang/String;I)V

    .line 1077
    :cond_9
    iget-object v5, p0, Lorg/codeaurora/ims/ImsConfigImpl$9;->val$event_info:Ljava/lang/String;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lorg/codeaurora/ims/ImsConfigImpl$9;->val$event_info:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_a

    .line 1078
    const-string v5, "evt_info"

    iget-object v6, p0, Lorg/codeaurora/ims/ImsConfigImpl$9;->val$event_info:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/codeaurora/ims/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    :cond_a
    shl-int/lit8 v5, v0, 0x10

    or-int/2addr v5, v1

    .line 1082
    .local v5, "flag":I
    iget-object v6, p0, Lorg/codeaurora/ims/ImsConfigImpl$9;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v6}, Lorg/codeaurora/ims/ImsConfigImpl;->access$1900(Lorg/codeaurora/ims/ImsConfigImpl;)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "}"

    const-string v8, "}, value={"

    if-ne v6, v5, :cond_b

    .line 1083
    :try_start_1
    iget-object v6, p0, Lorg/codeaurora/ims/ImsConfigImpl$9;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Ignore Checkin event, flag={0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1084
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "}, tag={"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/codeaurora/ims/CheckinEvent;->getTagName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1085
    invoke-virtual {v4}, Lorg/codeaurora/ims/CheckinEvent;->serializeEvent()Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1083
    invoke-static {v6, v7}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1086
    return-void

    .line 1088
    :cond_b
    iget-object v6, p0, Lorg/codeaurora/ims/ImsConfigImpl$9;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v6, v5}, Lorg/codeaurora/ims/ImsConfigImpl;->access$1902(Lorg/codeaurora/ims/ImsConfigImpl;I)I

    .line 1090
    iget-object v6, p0, Lorg/codeaurora/ims/ImsConfigImpl$9;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v6}, Lorg/codeaurora/ims/ImsConfigImpl;->access$600(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/codeaurora/ims/CheckinEvent;->publish(Landroid/content/ContentResolver;)V

    .line 1092
    iget-object v6, p0, Lorg/codeaurora/ims/ImsConfigImpl$9;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Log Checkin event, tag={"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/codeaurora/ims/CheckinEvent;->getTagName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1093
    invoke-virtual {v4}, Lorg/codeaurora/ims/CheckinEvent;->serializeEvent()Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1092
    invoke-static {v6, v7}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1096
    .end local v5    # "flag":I
    goto :goto_0

    .line 1094
    :catch_0
    move-exception v5

    .line 1095
    .local v5, "ex":Ljava/lang/Exception;
    iget-object v6, p0, Lorg/codeaurora/ims/ImsConfigImpl$9;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Checkin publish failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1097
    .end local v5    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
