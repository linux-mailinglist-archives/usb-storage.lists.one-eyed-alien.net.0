Return-Path: <usb-storage+bncBCIKNOFMWQGRBN5A22JAMGQEGC5QGJY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x646.google.com (mail-pl1-x646.google.com [IPv6:2607:f8b0:4864:20::646])
	by mail.lfdr.de (Postfix) with ESMTPS id D207E4FE40D
	for <lists+usb-storage@lfdr.de>; Tue, 12 Apr 2022 16:44:09 +0200 (CEST)
Received: by mail-pl1-x646.google.com with SMTP id i2-20020a170902c94200b001586d3264c9sf2652576pla.1
        for <lists+usb-storage@lfdr.de>; Tue, 12 Apr 2022 07:44:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1649774648; cv=pass;
        d=google.com; s=arc-20160816;
        b=MlpMA+Car6JbYk0y7MVzq2I8mqvtDEcLjGZLE3KRwM52GRMp62OrlFyDHVu1Juj33J
         u4Xm8Q2DSyPH7hc5FI1UFiiuPIII9PrH/Mn1AsHtwIQrAANDYR+kj2kzUGL/AueWWhOp
         8zbyCTq+1H+fQboXgGVB6lNVgHpQ0zYvtSnukJNQXUJsuZ9cK3XK7axxceTzNCpXFaxu
         17kaBjiPJXEkjbQAAQo0pxdQKawj9oxpof+xIIF4+5GO34KFLI6qj4hskovZ3nMFrSWD
         gbd7TLmwJeAwTGNRKzfxWzVntFjGDtt1PfEJgeja1sekrkoEQ9lGjcNcicdT3Qez3INf
         1zTg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=kLEklfwS1rs0C15rU+RCPQz4oaWDK38pyvZ6miMtwxc=;
        b=LUF6Aao1fGQrTgcAHrWzgl2XnSmhdYG4rceLGcYChBw8Xbv/F0leEoeh8QR8Q8S7zO
         /KZ8PeYjWe8qQCql3fa5rZXde9bdNkAH3PRBjwmFpZMD+Sj9WcOrRwSwBlnEfEDmIZj7
         AaB1DA8nmiVhtPL1Ip36jfZS0wgPmSpULx+o1JPCPXRw6Qo8Leh92tIAdTzGtsO9xx+h
         hUc5HWyv4wX+m6+/yYTefgdQZGEhQjz9hcdxS5b2HHY3uNQ0KSt/gKJeloeVAPdOo23n
         68TXQgQhji7XbebNhOa6akhDr4VJeuAv9Hdl3Qiia56cgv9vKEUZ5ZBHCxy+AmA+Bo8Q
         hkkQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of linma@zju.edu.cn designates 61.164.42.155 as permitted sender) smtp.mailfrom=linma@zju.edu.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kLEklfwS1rs0C15rU+RCPQz4oaWDK38pyvZ6miMtwxc=;
        b=MgqRZomNbnjuT+bph9KC5RMjN3YZ3S4xZwVyGa9qQxMWiI6K2O1WJMV7KHXUehh5fm
         jqwoI1nSUWX9tVWSGzUygFeN3AcqSADR8VmgGA2qVuPkC700Cb0qsHMJSjAoNnhEtNjD
         tUMxu2C9dX6OucbDN5g2L2oXzw0smU5VVUdQc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kLEklfwS1rs0C15rU+RCPQz4oaWDK38pyvZ6miMtwxc=;
        b=QSe1y9ynDVk+LWAaxg8/02pCGYGr8pf1RERYu0Nz3Aq+9+IW8VH6jpaFMYlG6n17f2
         4h2+sDHAYPFxqvfirmBKkILC2r00S+kXhwAOfONLW8yOCQSy+U1jFoZUT6yBsIq+goJh
         KtlyqSiVX2yuH9uReM29chGXUROJCUpsO56d5Ena9sJ04ayZx6bRCcF22ns4qz0vDILW
         bSUQW8V7Bnf6TZiIH3wwLfVatKuSh1tmcxjgasyXe6edqp+8dIZZZHfIC9TXOFn/+PQw
         RxUB8K4tltxrQd1TDB/DPJsF7A3Yzv22lTfsIWhuFM3FGecVccZId/h7ZDk1Y+Ts1pW6
         y/Lg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM530d82geV6h5T4iXn8piTp0e1i8El5r27WyZGiplYh2zKBbOzlgz
	9jBkr0GvWr/6Wfssl5xHmyA1QQ==
X-Google-Smtp-Source: ABdhPJyDoBFg1U26G2AliLASUN0VcdY8SuSQioGqN5avB9LYCT+Dfg9vOpPqEpAM+JZ/rAmdBIwxXQ==
X-Received: by 2002:aa7:8a06:0:b0:506:28c:1282 with SMTP id m6-20020aa78a06000000b00506028c1282mr2302071pfa.19.1649774648024;
        Tue, 12 Apr 2022 07:44:08 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:9f96:b0:1cb:abf5:517e with SMTP id
 o22-20020a17090a9f9600b001cbabf5517els4416474pjp.1.gmail; Tue, 12 Apr 2022
 07:44:07 -0700 (PDT)
X-Received: by 2002:a17:90b:4f88:b0:1c9:b632:9462 with SMTP id qe8-20020a17090b4f8800b001c9b6329462mr5461598pjb.54.1649774647251;
        Tue, 12 Apr 2022 07:44:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1649774647; cv=none;
        d=google.com; s=arc-20160816;
        b=ywyvxpTZh4hJTrcqswQcfNgLkCRdK1A8oyJnSXbz9AKw65C//pXZCDPER+jR43qsqq
         dCcpRO6hATapa7kojGOpsh2n65fiJmhHPvwWgZFPEHMVmT1aJ8O12e0ax0BOt2TlgBfB
         V7T5yCaz10KCb5//N/1q/kwD6wiJA/itknQWIzsk4zIVfrnBP6PdZ8gcwP7SAXSBdTNB
         CWEiTe7rZGHaH5dgJbkzSQO6bgKbIdo/EuveHWRMm/GOPS2G8t97v/xRAcQN/h2QTB67
         pRO601Ppq9J8zostg3RckPCYwIykcsusI3uD1UW9K+2prCfgiyPyeNh+bQe9hWkidmfL
         IcaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=1VZQzhyRkvQ+Hp819oy1PVYpOWALabHiCup2EXP7c+s=;
        b=hVNW7qrJT7hjgXWhqoiZe66eWSgDbg+FWD7BiLRF2wS1eOeGDi6ATj5Scq9tSqkOT4
         EyATvxExCAncDditAtPYrz2VUl/zrSx40YvQj4eIgMeIFi3iwZQCKzHgkLA9OAKHDNqC
         hRW5y8FR+pwkZuOXzcauNs5gdd9Jw9xBvF+h0QWVRL2SLH4zy8B4r30MwHTv3t6sutf4
         6fZlFaerjJuW7BvcZoAU13mO/Y9hbWvEBjfPSXdYLiJx/XfYnpSRSZQ5ct6eiyZbVr6P
         m1fvfoPMfo7maOiyWrF/M/oUiYlfhP+qwCgpTGlFuSNh0o/KazSJBXHlUeIQgGx8hMNo
         P7Mw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of linma@zju.edu.cn designates 61.164.42.155 as permitted sender) smtp.mailfrom=linma@zju.edu.cn
Received: from zju.edu.cn (spam.zju.edu.cn. [61.164.42.155])
        by mx.google.com with ESMTP id t16-20020a170902e85000b00153b2d164d0si12802279plg.216.2022.04.12.07.44.06
        for <usb-storage@lists.one-eyed-alien.net>;
        Tue, 12 Apr 2022 07:44:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of linma@zju.edu.cn designates 61.164.42.155 as permitted sender) client-ip=61.164.42.155;
Received: from localhost.localdomain (unknown [222.205.9.127])
	by mail-app3 (Coremail) with SMTP id cC_KCgD3ScowkFViL2n8AQ--.1229S4;
	Tue, 12 Apr 2022 22:44:01 +0800 (CST)
From: Lin Ma <linma@zju.edu.cn>
To: stern@rowland.harvard.edu,
	gregkh@linuxfoundation.org,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	mdharm-usb@one-eyed-alien.net
Cc: Lin Ma <linma@zju.edu.cn>,
	stable@vger.kernel.org
Subject: [usb-storage] [PATCH v4] USB: storage: karma: fix rio_karma_init return
Date: Tue, 12 Apr 2022 22:43:59 +0800
Message-Id: <20220412144359.28447-1-linma@zju.edu.cn>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CM-TRANSID: cC_KCgD3ScowkFViL2n8AQ--.1229S4
X-Coremail-Antispam: 1UD129KBjvJXoW7CrWUtw48GFW5XFWDtFyUtrb_yoW8Ar4Dpa
	ykGry5CrWUJF1fXr9rXryUuFy5Can7tFWjga4fK3ZI9rsrtF18CF12v3W0g3ZYqrySk3Wx
	tF1v9Fy2gr1DAFDanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUUka1xkIjI8I6I8E6xAIw20EY4v20xvaj40_Wr0E3s1l1IIY67AE
	w4v_Jr0_Jr4l8cAvFVAK0II2c7xJM28CjxkF64kEwVA0rcxSw2x7M28EF7xvwVC0I7IYx2
	IY67AKxVWDJVCq3wA2z4x0Y4vE2Ix0cI8IcVCY1x0267AKxVW8Jr0_Cr1UM28EF7xvwVC2
	z280aVAFwI0_GcCE3s1l84ACjcxK6I8E87Iv6xkF7I0E14v26rxl6s0DM2AIxVAIcxkEcV
	Aq07x20xvEncxIr21l5I8CrVACY4xI64kE6c02F40Ex7xfMcIj6xIIjxv20xvE14v26r1j
	6r18McIj6I8E87Iv67AKxVWUJVW8JwAm72CE4IkC6x0Yz7v_Jr0_Gr1lF7xvr2IYc2Ij64
	vIr41lF7I21c0EjII2zVCS5cI20VAGYxC7MxAIw28IcxkI7VAKI48JMxAIw28IcVCjz48v
	1sIEY20_GFWkJr1UJwCFx2IqxVCFs4IE7xkEbVWUJVW8JwC20s026c02F40E14v26r1j6r
	18MI8I3I0E7480Y4vE14v26r106r1rMI8E67AF67kF1VAFwI0_JF0_Jw1lIxkGc2Ij64vI
	r41lIxAIcVC0I7IYx2IY67AKxVWUJVWUCwCI42IY6xIIjxv20xvEc7CjxVAFwI0_Jr0_Gr
	1lIxAIcVCF04k26cxKx2IYs7xG6r1j6r1xMIIF0xvEx4A2jsIE14v26r1j6r4UMIIF0xvE
	x4A2jsIEc7CjxVAFwI0_Gr0_Gr1UYxBIdaVFxhVjvjDU0xZFpf9x0JUdHUDUUUUU=
X-CM-SenderInfo: qtrwiiyqvtljo62m3hxhgxhubq/
X-Original-Sender: linma@zju.edu.cn
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of linma@zju.edu.cn designates 61.164.42.155 as permitted sender) smtp.mailfrom=linma@zju.edu.cn
Content-Type: text/plain; charset="UTF-8"
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
X-Spam-Checked-In-Group: usb-storage@lists.one-eyed-alien.net
X-Google-Group-Id: 960895140360
List-Post: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/post>,
 <mailto:usb-storage@lists.one-eyed-alien.net>
List-Help: <https://support.google.com/a/lists.one-eyed-alien.net/bin/topic.py?topic=25838>,
 <mailto:usb-storage+help@lists.one-eyed-alien.net>
List-Archive: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/>
List-Subscribe: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/subscribe>,
 <mailto:usb-storage+subscribe@lists.one-eyed-alien.net>
List-Unsubscribe: <mailto:googlegroups-manage+960895140360+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/subscribe>

The function rio_karam_init() should return -ENOMEM instead of
value 0 (USB_STOR_TRANSPORT_GOOD) when allocation fails.

Similarly, it should return -EIO when rio_karma_send_command() fails.

Cc: stable@vger.kernel.org
Fixes: dfe0d3ba20e8 ("USB Storage: add rio karma eject support")
Signed-off-by: Lin Ma <linma@zju.edu.cn>
Acked-by: Alan Stern <stern@rowland.harvard.edu>
---
V3 -> V4: fix spelling mistake: Simlarly -> Similarly
V2 -> V3: add Acked-by: Alan Stern <stern@rowland.harvard.edu>
V1 -> V2: add Cc: stable@vger.kernel.org
V0 -> V1: use -ENOMEM rather than USB_STOR_TRANSPORT_ERROR;
          take care of rio_karma_send_command() too

 drivers/usb/storage/karma.c | 15 ++++++++-------
 1 file changed, 8 insertions(+), 7 deletions(-)

diff --git a/drivers/usb/storage/karma.c b/drivers/usb/storage/karma.c
index 05cec81dcd3f..38ddfedef629 100644
--- a/drivers/usb/storage/karma.c
+++ b/drivers/usb/storage/karma.c
@@ -174,24 +174,25 @@ static void rio_karma_destructor(void *extra)
 
 static int rio_karma_init(struct us_data *us)
 {
-	int ret = 0;
 	struct karma_data *data = kzalloc(sizeof(struct karma_data), GFP_NOIO);
 
 	if (!data)
-		goto out;
+		return -ENOMEM;
 
 	data->recv = kmalloc(RIO_RECV_LEN, GFP_NOIO);
 	if (!data->recv) {
 		kfree(data);
-		goto out;
+		return -ENOMEM;
 	}
 
 	us->extra = data;
 	us->extra_destructor = rio_karma_destructor;
-	ret = rio_karma_send_command(RIO_ENTER_STORAGE, us);
-	data->in_storage = (ret == 0);
-out:
-	return ret;
+	if (rio_karma_send_command(RIO_ENTER_STORAGE, us))
+		return -EIO;
+
+	data->in_storage = 1;
+
+	return 0;
 }
 
 static struct scsi_host_template karma_host_template;
-- 
2.35.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20220412144359.28447-1-linma%40zju.edu.cn.
