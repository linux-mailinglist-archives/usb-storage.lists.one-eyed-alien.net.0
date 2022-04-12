Return-Path: <usb-storage+bncBCIKNOFMWQGRBKGA2OJAMGQEZVZVC3Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x448.google.com (mail-pf1-x448.google.com [IPv6:2607:f8b0:4864:20::448])
	by mail.lfdr.de (Postfix) with ESMTPS id DEB754FCC38
	for <lists+usb-storage@lfdr.de>; Tue, 12 Apr 2022 04:12:58 +0200 (CEST)
Received: by mail-pf1-x448.google.com with SMTP id x68-20020a623147000000b004fd8d1ed04csf10579563pfx.23
        for <lists+usb-storage@lfdr.de>; Mon, 11 Apr 2022 19:12:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1649729577; cv=pass;
        d=google.com; s=arc-20160816;
        b=KaehYYtB6pdxetPb/ERKbI7apEr5BqUH0K8tjYABZFIwDziGMRFtmF03DrMyCaQIFG
         e3d0SQlBpBei1zYKPREmd2cfLnDv/0ABpCrEZODamHjHaNJFoBFqgXqJa9dI1FiyioYp
         AxlQUO7zPRHMbGQ0KNan1L1qox414dHeRaASKazhnyvIvjNYeCnM9xFL93s0FeJfa5nF
         lZZ6k5murmg6TTCBEmodd4pBpOFY+d3trRBenNwLSh5XjDHenS2HbDBqEJLTey+I6yyY
         yIELIE8a3LYcSUTH/CjiLGKLzTy+mSteoLmzr5lXQGGvt1idLpOmtTsyj/oqPFw+mQVp
         AV6g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=ilOXeVM9al8eDDjZeL25jXNWubkYmhlYr54gIxcRztQ=;
        b=0/On2jubKgeQ4TJrKOEp62uzmFFGiVz/KMrp27Xg8UQ9U5+rVIYBPKLmwwddf1sXAB
         XhzWikmPik70iceB8z5zgTfmu+8uPkvynGs/USNRbrgMasn8zPqwrXst3Oa5J1tlxn6o
         iCdYBvuDZtC7VZUJhon9qiBVxIGXhtN2toqke510AhPoQ73Q1iskfbql2nTCMymAStoU
         cy/JpLTLN+Cqnkn88PXSDtPR4zk8a5zHLQFpKbbnuGsuqLszldj7Q0GYF7IQN/6DdtLS
         /1OPVa39zEQ4kRZ1Ol1x9w8lyhUltme6Rxxx6WRV5qCie7BO41YGQpyvVrRWqab138tt
         dkag==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of linma@zju.edu.cn designates 61.164.42.155 as permitted sender) smtp.mailfrom=linma@zju.edu.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ilOXeVM9al8eDDjZeL25jXNWubkYmhlYr54gIxcRztQ=;
        b=Y3swTorLbEFdxDI3H5Ypl3B0Aoe0nZqmJWicPiIUoOzyw9UXvhJI09fRRL4OjTEYJL
         5ZEuF6x2gZi6gbqQDnxzxV6bWagNFlrrXU4dsnr/rSUXF7JHNeET1+cTyeZlb4WwmKv4
         q43MOczIqpZ0qbeXv+09KqXopdBO8fyFZTGPI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ilOXeVM9al8eDDjZeL25jXNWubkYmhlYr54gIxcRztQ=;
        b=x2KDY/dzsLg0d3SVLqM3qCM7vI4WRkdGCFQHei8ELzR/bWgNyvbFcxD7Hvs88Bc9Fy
         +1JhPO/cN7n/PtCMH5zS90742bELsDdtr2ADSXYru1+v4Ix5stdWFL2QQHzMiikW5sy1
         JO3bVQ//06cCnksSZEU+qF/VBWRgSBFiS6yd5H8RZTEVbHNbUwtfMlaneiUIE/opDQCG
         vN9SAEzwzJKedgqLab4AUlQRdm3LvNBBWmK7IJZSNVMtRi7zg1wN2crpslLqE9PkCpfZ
         7mXpWr8C4xdEZJO5lOWp5yvqRwDvbvKxKG7AXLYr1svHjgz/GOdS48eysE+bwJAxP97I
         CaIA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM531fBWq96ExQyhW+AhOe6WK+QoRnGf1yizjYkl9j4TXgiJFDJdaY
	YcstR6WpryqnkJFw32vMZA7axA==
X-Google-Smtp-Source: ABdhPJy+sj38fq2J+Abgvx5TkiCLyor8E9dRN9wDjM9VIP6aCkbjQ0laVCmOZ3483UGP7gkjIHXhCA==
X-Received: by 2002:a63:dc53:0:b0:381:7f41:3a2d with SMTP id f19-20020a63dc53000000b003817f413a2dmr29085119pgj.126.1649729577097;
        Mon, 11 Apr 2022 19:12:57 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a63:8a4b:0:b0:39d:3f7e:b29a with SMTP id y72-20020a638a4b000000b0039d3f7eb29als4976875pgd.10.gmail;
 Mon, 11 Apr 2022 19:12:56 -0700 (PDT)
X-Received: by 2002:a65:670b:0:b0:382:243d:fa with SMTP id u11-20020a65670b000000b00382243d00famr28609523pgf.360.1649729576052;
        Mon, 11 Apr 2022 19:12:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1649729576; cv=none;
        d=google.com; s=arc-20160816;
        b=eAyBgNhtTTWZiuMLjd5svx0mKi1BCvZVzdQ7NIqTb3j6t+x7rZxyWP/I/jOpXtuvbT
         LjLhWOQ1eW4jZreMIHPTnZfDoT2IdrC34IA+AG6/GEjG5X12Dr5wnlE9XNk1Ym1M1/k6
         Uh42pmByEe9B2GVFrOQTmDGp1PNA1pJEZJlaQN7DId0zW61UYUWfOO6cTcm2fDl/FaqA
         rSozf2vJT4ownoNKWOTGAqDh/hVitI6QQnaqo4T+lBkRDk37ddWpM9NG4YGKEErz9W+a
         W/SN9pQOszhq/RtDsUpcqyzWw+zw7RHxon/T+g9xVjq9VMfLrClkWcjpCqve9G4zPSjk
         jb6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=A+KF1b7Gm4pFT+UNFneyrlszpJqDj0Mk0kZCwx6E9DE=;
        b=tw0VNxguWblc7/l95GNczvMyLkJFENeUCLwDmvM0ii4Z1QURzKJFhDa98Qb5YywbQJ
         PiW+TbTQQT/0064+TTZNjoPhoLc2eA0jaPOWFMrl2X3bbv2HA9+Rd1TaJ+gGp2IfhuLf
         HZ40YKeZm6DUlVb/oBW+3f4NWv7QJ+OiHQuYDVpOdfNvaICVhwC1k0TJjH0xLhg2oIFp
         Tr3OnRLmH13ELB7FVZMxT+iHZyi8peT/Bmgsp4SDyJNzziRKjrYhlodao+OmsyiNj3Cx
         pRAY61q9NWnzov2Vf0gkFFQ9PIWMDpIPU4u8YIpHpvZMLOSinfJMhVogw3ZF1cC/VQ76
         iE+w==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of linma@zju.edu.cn designates 61.164.42.155 as permitted sender) smtp.mailfrom=linma@zju.edu.cn
Received: from zju.edu.cn (mail.zju.edu.cn. [61.164.42.155])
        by mx.google.com with ESMTP id k35-20020a63ff23000000b0039d430ff61dsi1430789pgi.184.2022.04.11.19.12.55
        for <usb-storage@lists.one-eyed-alien.net>;
        Mon, 11 Apr 2022 19:12:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of linma@zju.edu.cn designates 61.164.42.155 as permitted sender) client-ip=61.164.42.155;
Received: from localhost.localdomain (unknown [222.205.1.189])
	by mail-app2 (Coremail) with SMTP id by_KCgA3ZcUk4FRiKgWUAQ--.21240S4;
	Tue, 12 Apr 2022 10:12:52 +0800 (CST)
From: Lin Ma <linma@zju.edu.cn>
To: stern@rowland.harvard.edu,
	gregkh@linuxfoundation.org,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	mdharm-usb@one-eyed-alien.net
Cc: Lin Ma <linma@zju.edu.cn>,
	stable@vger.kernel.org
Subject: [usb-storage] [PATCH v3] USB: storage: karma: fix rio_karma_init return
Date: Tue, 12 Apr 2022 10:12:46 +0800
Message-Id: <20220412021246.18340-1-linma@zju.edu.cn>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CM-TRANSID: by_KCgA3ZcUk4FRiKgWUAQ--.21240S4
X-Coremail-Antispam: 1UD129KBjvJXoW7CrWUtw48GFW5Xr48CFyrCrg_yoW8Gw47pa
	ykGry5CFyUJF1fWr9rXryDuFy5Can7tFWjga4fKwn09rsrtFW8CF12va4093ZYqrySk3Wx
	tF1v9Fyagrn8JFDanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUUvj1xkIjI8I6I8E6xAIw20EY4v20xvaj40_Wr0E3s1l1IIY67AE
	w4v_Jr0_Jr4l8cAvFVAK0II2c7xJM28CjxkF64kEwVA0rcxSw2x7M28EF7xvwVC0I7IYx2
	IY67AKxVWDJVCq3wA2z4x0Y4vE2Ix0cI8IcVCY1x0267AKxVW0oVCq3wA2z4x0Y4vEx4A2
	jsIE14v26rxl6s0DM28EF7xvwVC2z280aVCY1x0267AKxVW0oVCq3wAS0I0E0xvYzxvE52
	x082IY62kv0487Mc02F40EFcxC0VAKzVAqx4xG6I80ewAv7VC0I7IYx2IY67AKxVWUJVWU
	GwAv7VC2z280aVAFwI0_Jr0_Gr1lOx8S6xCaFVCjc4AY6r1j6r4UM4x0Y48IcxkI7VAKI4
	8JM4x0x7Aq67IIx4CEVc8vx2IErcIFxwCY02Avz4vE14v_Gr1l42xK82IYc2Ij64vIr41l
	42xK82IY6x8ErcxFaVAv8VW8uw4UJr1UMxC20s026xCaFVCjc4AY6r1j6r4UMI8I3I0E5I
	8CrVAFwI0_Jr0_Jr4lx2IqxVCjr7xvwVAFwI0_JrI_JrWlx4CE17CEb7AF67AKxVWUAVWU
	twCIc40Y0x0EwIxGrwCI42IY6xIIjxv20xvE14v26r1j6r1xMIIF0xvE2Ix0cI8IcVCY1x
	0267AKxVWUJVW8JwCI42IY6xAIw20EY4v20xvaj40_Jr0_JF4lIxAIcVC2z280aVAFwI0_
	Jr0_Gr1lIxAIcVC2z280aVCY1x0267AKxVWUJVW8JbIYCTnIWIevJa73UjIFyTuYvjfUO_
	MaUUUUU
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

Simlarlly, it should return -EIO when rio_karma_send_command() fails.

Cc: stable@vger.kernel.org
Fixes: dfe0d3ba20e8 ("USB Storage: add rio karma eject support")
Signed-off-by: Lin Ma <linma@zju.edu.cn>
Acked-by: Alan Stern <stern@rowland.harvard.edu>
---
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20220412021246.18340-1-linma%40zju.edu.cn.
