.class Lcom/qualcomm/ims/vt/LowBatteryHandler$1;
.super Landroid/content/BroadcastReceiver;
.source "LowBatteryHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/ims/vt/LowBatteryHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/ims/vt/LowBatteryHandler;


# direct methods
.method constructor <init>(Lcom/qualcomm/ims/vt/LowBatteryHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/ims/vt/LowBatteryHandler;

    .line 110
    iput-object p1, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler$1;->this$0:Lcom/qualcomm/ims/vt/LowBatteryHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 113
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 115
    iget-object v1, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler$1;->this$0:Lcom/qualcomm/ims/vt/LowBatteryHandler;

    .line 116
    invoke-static {v1}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->access$000(Lcom/qualcomm/ims/vt/LowBatteryHandler;)I

    move-result v1

    iget-object v2, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler$1;->this$0:Lcom/qualcomm/ims/vt/LowBatteryHandler;

    invoke-static {v2}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->access$100(Lcom/qualcomm/ims/vt/LowBatteryHandler;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->allowVideoCallsInLowBattery(ILandroid/content/Context;)Z

    move-result v1

    .line 117
    .local v1, "allowVideoCallsInLowBattery":Z
    iget-object v2, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler$1;->this$0:Lcom/qualcomm/ims/vt/LowBatteryHandler;

    const/4 v3, 0x0

    const-string v4, "battery_low"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->access$202(Lcom/qualcomm/ims/vt/LowBatteryHandler;Z)Z

    .line 118
    iget-object v2, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler$1;->this$0:Lcom/qualcomm/ims/vt/LowBatteryHandler;

    invoke-static {v2}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->access$200(Lcom/qualcomm/ims/vt/LowBatteryHandler;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    .line 120
    invoke-static {}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "disconnectVideoCalls on low battery"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v2, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler$1;->this$0:Lcom/qualcomm/ims/vt/LowBatteryHandler;

    invoke-static {v2}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->access$400(Lcom/qualcomm/ims/vt/LowBatteryHandler;)V

    .line 124
    :cond_0
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler$1;->this$0:Lcom/qualcomm/ims/vt/LowBatteryHandler;

    invoke-static {v2}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->access$500(Lcom/qualcomm/ims/vt/LowBatteryHandler;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 126
    :cond_1
    iget-object v2, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler$1;->this$0:Lcom/qualcomm/ims/vt/LowBatteryHandler;

    invoke-static {v2}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->access$600(Lcom/qualcomm/ims/vt/LowBatteryHandler;)V

    .line 129
    .end local v1    # "allowVideoCallsInLowBattery":Z
    :cond_2
    return-void
.end method
