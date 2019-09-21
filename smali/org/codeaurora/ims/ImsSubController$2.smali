.class Lorg/codeaurora/ims/ImsSubController$2;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "ImsSubController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsSubController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsSubController;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsSubController;)V
    .locals 0
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsSubController;

    .line 597
    iput-object p1, p0, Lorg/codeaurora/ims/ImsSubController$2;->this$0:Lorg/codeaurora/ims/ImsSubController;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 11

    .line 600
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController$2;->this$0:Lorg/codeaurora/ims/ImsSubController;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSubController;->access$800(Lorg/codeaurora/ims/ImsSubController;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 601
    return-void

    .line 604
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController$2;->this$0:Lorg/codeaurora/ims/ImsSubController;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSubController;->access$800(Lorg/codeaurora/ims/ImsSubController;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    .line 605
    .local v0, "activeSubList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v0, :cond_10

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    goto/16 :goto_9

    .line 609
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 610
    .local v1, "validSubList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 611
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    .line 612
    .local v3, "activeSubInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    move-result v4

    if-gtz v4, :cond_2

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getMnc()I

    move-result v4

    if-gtz v4, :cond_2

    .line 613
    goto :goto_0

    .line 615
    :cond_2
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 616
    .end local v3    # "activeSubInfo":Landroid/telephony/SubscriptionInfo;
    goto :goto_0

    .line 617
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 618
    .local v2, "nValidSubs":I
    if-gtz v2, :cond_4

    .line 619
    return-void

    .line 622
    :cond_4
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v3

    .line 624
    .local v3, "phoneId":I
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSubController$2;->this$0:Lorg/codeaurora/ims/ImsSubController;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSubscriptionsChanged, getDefaultDataPhoneId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 625
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v4

    if-nez v4, :cond_c

    .line 626
    const/4 v4, 0x1

    if-ne v2, v4, :cond_5

    .line 627
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    .line 628
    .local v4, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v3

    .line 629
    iget-object v5, p0, Lorg/codeaurora/ims/ImsSubController$2;->this$0:Lorg/codeaurora/ims/ImsSubController;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onSubscriptionsChanged, 1 SIM: phoneid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 630
    .end local v4    # "subInfo":Landroid/telephony/SubscriptionInfo;
    goto/16 :goto_7

    .line 631
    :cond_5
    invoke-static {}, Lorg/codeaurora/ims/ImsServicePreferences;->getInstance()Lorg/codeaurora/ims/ImsServicePreferences;

    move-result-object v4

    .line 632
    .local v4, "preferences":Lorg/codeaurora/ims/ImsServicePreferences;
    if-eqz v4, :cond_b

    .line 633
    invoke-virtual {v4}, Lorg/codeaurora/ims/ImsServicePreferences;->getImsRegSubIds()[I

    move-result-object v5

    .line 634
    .local v5, "imsRegSubIds":[I
    if-eqz v5, :cond_b

    array-length v6, v5

    if-lez v6, :cond_b

    .line 635
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    array-length v7, v5

    if-ge v6, v7, :cond_9

    .line 636
    aget v7, v5, v6

    .line 637
    .local v7, "imsRegSubId":I
    iget-object v8, p0, Lorg/codeaurora/ims/ImsSubController$2;->this$0:Lorg/codeaurora/ims/ImsSubController;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onSubscriptionsChanged, i="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", imsRegSubId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 639
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/SubscriptionInfo;

    .line 640
    .local v9, "validSubInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v9}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v10

    .line 641
    .local v10, "subId":I
    if-ne v7, v10, :cond_6

    .line 642
    invoke-virtual {v9}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v3

    .line 643
    goto :goto_3

    .line 645
    .end local v9    # "validSubInfo":Landroid/telephony/SubscriptionInfo;
    .end local v10    # "subId":I
    :cond_6
    goto :goto_2

    .line 646
    :cond_7
    :goto_3
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 647
    goto :goto_4

    .line 635
    .end local v7    # "imsRegSubId":I
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 650
    .end local v6    # "i":I
    :cond_9
    :goto_4
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v6

    if-nez v6, :cond_b

    .line 651
    invoke-virtual {v4}, Lorg/codeaurora/ims/ImsServicePreferences;->getImsRegPhoneId()I

    move-result v6

    .line 652
    .local v6, "imsRegPhoneId":I
    iget-object v7, p0, Lorg/codeaurora/ims/ImsSubController$2;->this$0:Lorg/codeaurora/ims/ImsSubController;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onSubscriptionsChanged, getImsRegPhoneId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 653
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/SubscriptionInfo;

    .line 654
    .local v8, "validSubInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v8}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v9

    .line 655
    .local v9, "slotId":I
    if-ne v6, v9, :cond_a

    .line 656
    move v3, v9

    .line 657
    goto :goto_6

    .line 659
    .end local v8    # "validSubInfo":Landroid/telephony/SubscriptionInfo;
    .end local v9    # "slotId":I
    :cond_a
    goto :goto_5

    .line 663
    .end local v5    # "imsRegSubIds":[I
    .end local v6    # "imsRegPhoneId":I
    :cond_b
    :goto_6
    iget-object v5, p0, Lorg/codeaurora/ims/ImsSubController$2;->this$0:Lorg/codeaurora/ims/ImsSubController;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onSubscriptionsChanged, 2 SIMs: phoneid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 667
    .end local v4    # "preferences":Lorg/codeaurora/ims/ImsServicePreferences;
    :cond_c
    :goto_7
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v4

    if-nez v4, :cond_d

    .line 668
    return-void

    .line 670
    :cond_d
    invoke-static {}, Lorg/codeaurora/ims/ImsSubController;->access$900()I

    move-result v4

    if-eq v3, v4, :cond_f

    .line 671
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSubController$2;->this$0:Lorg/codeaurora/ims/ImsSubController;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSubscriptionsChanged, mImsPhoneId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/codeaurora/ims/ImsSubController;->access$900()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", phoneId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 673
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    .line 674
    .local v5, "activeSubInfo":Landroid/telephony/SubscriptionInfo;
    iget-object v6, p0, Lorg/codeaurora/ims/ImsSubController$2;->this$0:Lorg/codeaurora/ims/ImsSubController;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "activeSubInfo: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 675
    .end local v5    # "activeSubInfo":Landroid/telephony/SubscriptionInfo;
    goto :goto_8

    .line 676
    :cond_e
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSubController$2;->this$0:Lorg/codeaurora/ims/ImsSubController;

    invoke-virtual {v4, v3}, Lorg/codeaurora/ims/ImsSubController;->updateActiveImsStackForPhoneId(I)V

    .line 678
    :cond_f
    return-void

    .line 606
    .end local v1    # "validSubList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .end local v2    # "nValidSubs":I
    .end local v3    # "phoneId":I
    :cond_10
    :goto_9
    return-void
.end method
