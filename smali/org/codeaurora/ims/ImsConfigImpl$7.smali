.class Lorg/codeaurora/ims/ImsConfigImpl$7;
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

    .line 835
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$7;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    iput p2, p0, Lorg/codeaurora/ims/ImsConfigImpl$7;->val$event_code:I

    iput-object p3, p0, Lorg/codeaurora/ims/ImsConfigImpl$7;->val$event_info:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 846
    const/4 v0, 0x0

    .line 847
    .local v0, "dm_provision":I
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$7;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsConfigImpl;->access$1200(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$7;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsConfigImpl;->access$1800(Lorg/codeaurora/ims/ImsConfigImpl;)I

    move-result v2

    const-string v3, "carrier_volte_provisioning_required_bool"

    invoke-static {v1, v2, v3}, Lorg/codeaurora/ims/ImsUtils;->getBooleanCarrierConfig(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 849
    or-int/lit8 v0, v0, 0x1

    .line 851
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$7;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfigInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_0

    .line 853
    or-int/lit8 v0, v0, 0x2

    .line 855
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$7;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfigInt(I)I

    move-result v1

    if-ne v2, v1, :cond_1

    .line 857
    or-int/lit8 v0, v0, 0x4

    .line 859
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$7;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    const/16 v3, 0x19

    invoke-virtual {v1, v3}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfigInt(I)I

    move-result v1

    if-ne v2, v1, :cond_2

    .line 861
    or-int/lit8 v0, v0, 0x8

    .line 863
    :cond_2
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$7;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    const/16 v3, 0x1c

    invoke-virtual {v1, v3}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfigInt(I)I

    move-result v1

    if-ne v2, v1, :cond_3

    .line 865
    or-int/lit8 v0, v0, 0x10

    .line 867
    :cond_3
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$7;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    const/16 v3, 0x44

    invoke-virtual {v1, v3}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfigInt(I)I

    move-result v1

    if-ne v2, v1, :cond_4

    .line 869
    or-int/lit8 v0, v0, 0x20

    .line 873
    :cond_4
    const-string v1, "CALL_PERF_STATS"

    .line 874
    .local v1, "CHECKIN_GROUP_TAG":Ljava/lang/String;
    const-string v2, "VolteProvisioning"

    .line 875
    .local v2, "CHECKIN_EVENT_NAME":Ljava/lang/String;
    new-instance v9, Lorg/codeaurora/ims/CheckinEvent;

    .line 878
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-string v4, "CALL_PERF_STATS"

    const-string v5, "VolteProvisioning"

    const-string v6, "1.0"

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lorg/codeaurora/ims/CheckinEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 881
    .local v3, "ce":Lorg/codeaurora/ims/CheckinEvent;
    const/4 v4, 0x0

    .line 882
    .local v4, "flag":I
    :try_start_0
    iget-object v5, p0, Lorg/codeaurora/ims/ImsConfigImpl$7;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v5}, Lorg/codeaurora/ims/ImsConfigImpl;->access$1900(Lorg/codeaurora/ims/ImsConfigImpl;)Ljava/lang/Integer;

    move-result-object v5

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 883
    :try_start_1
    const-string v6, "usr"

    iget-object v7, p0, Lorg/codeaurora/ims/ImsConfigImpl$7;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v7}, Lorg/codeaurora/ims/ImsConfigImpl;->access$1900(Lorg/codeaurora/ims/ImsConfigImpl;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v3, v6, v7}, Lorg/codeaurora/ims/CheckinEvent;->setValue(Ljava/lang/String;I)V

    .line 884
    iget-object v6, p0, Lorg/codeaurora/ims/ImsConfigImpl$7;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v6}, Lorg/codeaurora/ims/ImsConfigImpl;->access$1900(Lorg/codeaurora/ims/ImsConfigImpl;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    shl-int/lit8 v6, v6, 0x10

    or-int v4, v6, v0

    .line 885
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 887
    :try_start_2
    const-string v5, "dm"

    invoke-virtual {v3, v5, v0}, Lorg/codeaurora/ims/CheckinEvent;->setValue(Ljava/lang/String;I)V

    .line 888
    iget v5, p0, Lorg/codeaurora/ims/ImsConfigImpl$7;->val$event_code:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_5

    .line 889
    const-string v5, "evt"

    iget v6, p0, Lorg/codeaurora/ims/ImsConfigImpl$7;->val$event_code:I

    invoke-virtual {v3, v5, v6}, Lorg/codeaurora/ims/CheckinEvent;->setValue(Ljava/lang/String;I)V

    .line 891
    :cond_5
    iget-object v5, p0, Lorg/codeaurora/ims/ImsConfigImpl$7;->val$event_info:Ljava/lang/String;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lorg/codeaurora/ims/ImsConfigImpl$7;->val$event_info:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_6

    .line 892
    const-string v5, "evt_info"

    iget-object v6, p0, Lorg/codeaurora/ims/ImsConfigImpl$7;->val$event_info:Ljava/lang/String;

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/codeaurora/ims/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    :cond_6
    iget-object v5, p0, Lorg/codeaurora/ims/ImsConfigImpl$7;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v5}, Lorg/codeaurora/ims/ImsConfigImpl;->access$2000(Lorg/codeaurora/ims/ImsConfigImpl;)I

    move-result v5

    if-ne v5, v4, :cond_7

    .line 896
    iget-object v5, p0, Lorg/codeaurora/ims/ImsConfigImpl$7;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignore Checkin event, flag={0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 897
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "}, tag={"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/codeaurora/ims/CheckinEvent;->getTagName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "}, value={"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 898
    invoke-virtual {v3}, Lorg/codeaurora/ims/CheckinEvent;->serializeEvent()Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 896
    invoke-static {v5, v6}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 899
    return-void

    .line 901
    :cond_7
    iget-object v5, p0, Lorg/codeaurora/ims/ImsConfigImpl$7;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v5, v4}, Lorg/codeaurora/ims/ImsConfigImpl;->access$2002(Lorg/codeaurora/ims/ImsConfigImpl;I)I

    .line 903
    iget-object v5, p0, Lorg/codeaurora/ims/ImsConfigImpl$7;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v5}, Lorg/codeaurora/ims/ImsConfigImpl;->access$1200(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/codeaurora/ims/CheckinEvent;->publish(Landroid/content/ContentResolver;)V

    .line 905
    iget-object v5, p0, Lorg/codeaurora/ims/ImsConfigImpl$7;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Log Checkin event, tag={"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/codeaurora/ims/CheckinEvent;->getTagName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "}, value={"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 906
    invoke-virtual {v3}, Lorg/codeaurora/ims/CheckinEvent;->serializeEvent()Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 905
    invoke-static {v5, v6}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 909
    .end local v4    # "flag":I
    goto :goto_0

    .line 885
    .restart local v4    # "flag":I
    :catchall_0
    move-exception v6

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "dm_provision":I
    .end local v1    # "CHECKIN_GROUP_TAG":Ljava/lang/String;
    .end local v2    # "CHECKIN_EVENT_NAME":Ljava/lang/String;
    .end local v3    # "ce":Lorg/codeaurora/ims/CheckinEvent;
    .end local p0    # "this":Lorg/codeaurora/ims/ImsConfigImpl$7;
    :try_start_4
    throw v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 907
    .end local v4    # "flag":I
    .restart local v0    # "dm_provision":I
    .restart local v1    # "CHECKIN_GROUP_TAG":Ljava/lang/String;
    .restart local v2    # "CHECKIN_EVENT_NAME":Ljava/lang/String;
    .restart local v3    # "ce":Lorg/codeaurora/ims/CheckinEvent;
    .restart local p0    # "this":Lorg/codeaurora/ims/ImsConfigImpl$7;
    :catch_0
    move-exception v4

    .line 908
    .local v4, "ex":Ljava/lang/Exception;
    iget-object v5, p0, Lorg/codeaurora/ims/ImsConfigImpl$7;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Checkin publish failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 910
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
