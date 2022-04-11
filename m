Return-Path: <usb-storage+bncBCIKNOFMWQGRBDUJZ6JAMGQEZV3757Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1048.google.com (mail-pj1-x1048.google.com [IPv6:2607:f8b0:4864:20::1048])
	by mail.lfdr.de (Postfix) with ESMTPS id 4136D4FB36B
	for <lists+usb-storage@lfdr.de>; Mon, 11 Apr 2022 08:02:56 +0200 (CEST)
Received: by mail-pj1-x1048.google.com with SMTP id s13-20020a17090a764d00b001cb896b75ffsf1189830pjl.6
        for <lists+usb-storage@lfdr.de>; Sun, 10 Apr 2022 23:02:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1649656975; cv=pass;
        d=google.com; s=arc-20160816;
        b=j8Ah5mZvbEuy6zcc2k556W/tOj1FDrX/9rgg3GDXPAAzqd/Tbpc/uVlLTcge9pweEa
         g6Tr+Q5ePUnYP9q7AF5lmCATOHTXStBCfSiu9uMQhRFE63eJ7ESSn2PqaZg1dSAk0k9z
         UxjZuiz2G2LfzkaVQYBEm66IrvD4DLlZsMxDUyksXPR99VHAfADhhN6QY3sBEYKIibaK
         af79HdSd+Jp4H87yt/wGdQdACcEXXytw80VGjmT1BkTeXUbtRoNhW3zNVIgVN/1X4Ini
         lVRe2/tkLWDCadnWGulHvLbGfDpOe9GPbRffDDeLBV6GdIYwIMPK+luuGmOO6B6XcLa6
         OQaQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=hOCYpuhoYTHHJXLqYgCbiVJPm4rirsFzxv/pf11xNWs=;
        b=zrdXv2caml8SO7r/e3RnCaizy+K25u9ewWgtcQQCMc6vTilu+8syKLWok/okEyVz4Y
         QxXSUTk7ZC46XD8LvW9rGams0l3FzHSqAxq0qXNjyRml1flw6BnRVAKJMofE2+CEr4Pl
         C9MxZoSHz2+qIQirviVfz6O0+hzrZ+jk++or9977J1wFDNeGU650GgnGja+2TjiLleXX
         0g/G2iEqraEyFiJo47qyKJey2bg3uadpNqHqySlS4XjI2hsKG7L4Yz+pk63DGdDhdHrG
         qJprl6DWFvax2HmQ00mv6rn2N7yic7MocTU+TcAG9EidVsdYafUVXkQ8EJQpnDuDyxuQ
         n+dA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of linma@zju.edu.cn designates 61.164.42.155 as permitted sender) smtp.mailfrom=linma@zju.edu.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hOCYpuhoYTHHJXLqYgCbiVJPm4rirsFzxv/pf11xNWs=;
        b=CiV5Dd0z6f6u8xxsaiSJiwJ8vWCzgbYfRMZt/goHxdAWknelZ6ulHJ54wS6dAe2nTo
         tllFawsy9m06KFfHxGPSXurID+fE11JM7q6sEJVKP/xqZQLzXFFjVrUZYxn5mc8c33+O
         Y+oRSm6yXC+EdpPfUseZ7eUyXjpjJboH5Gs6I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hOCYpuhoYTHHJXLqYgCbiVJPm4rirsFzxv/pf11xNWs=;
        b=7a52W9kM4vrG56nByYGZ4z8Xrh43X65b3bALruaoohl4TGy07pyxa8KSIylQ5FGmW+
         pyH7jKgWvKaSg44PDq9wDbPFm2NcfPS4kcv9uGe9hakra4kTOmVGGbZOsufhQjLLS80i
         WPQFNsBm14bIR+cHjsyrvzFr8RwUsZne1NuN/VOZsdecG7yUwnKjEvFbaG0MX2/rBMKc
         BlcsYAB6z4q0rL8pfPYwUUFpCPOWCDidgw0+GSqjRPUF89TJg9i4TqXuOP1gLQJx59u9
         BjBuoUyHdtmgxGWj9MZejeSVy9jwVO33rwlsffcfRDqEzr7PIFOz820REDzWIKiDm2cJ
         2Eqg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM531q8Mdgczgk0dcS9uH69RkM8bSvOV6djPQgMWmpD8Oc8T1CJQhh
	Om5tw2GByp5pFHOLA7aETiORew==
X-Google-Smtp-Source: ABdhPJzaZpK9AK+3I7KPbSU24tddY6O/i6qMuuUgvBcF2suj5SmMip5DlaqvsRzETTqWE0Tcz1QZzg==
X-Received: by 2002:a17:90a:ca8b:b0:1cb:7ed1:7476 with SMTP id y11-20020a17090aca8b00b001cb7ed17476mr7430990pjt.11.1649656974711;
        Sun, 10 Apr 2022 23:02:54 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6a00:a14:b0:505:aa10:44e4 with SMTP id
 p20-20020a056a000a1400b00505aa1044e4ls2977514pfh.1.gmail; Sun, 10 Apr 2022
 23:02:53 -0700 (PDT)
X-Received: by 2002:a63:c015:0:b0:385:fe06:eb86 with SMTP id h21-20020a63c015000000b00385fe06eb86mr24866029pgg.132.1649656973239;
        Sun, 10 Apr 2022 23:02:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1649656973; cv=none;
        d=google.com; s=arc-20160816;
        b=FrcbNRzmfF5Wtd6OMjhq0t+Oyt1ocjOWE0R0Mw1x0fKdQ+UKQq9TRxhs3strAxfhp2
         uZmc/hZ70HV9LAO4UAwop0vd+LZbPYEu3/kttREfnx9HbsOGLwx/2yy+GC0b4brna5FY
         HQi6/mdoFM4wbEtR6mICzCM0botxrrUjbgNVZRH8SYEwU0Hgzdda9dC1Dz/xNW8xC/kD
         rzx6u8DmjfJPrlBiaHHUkvmwsOVJY62ahTZ4Gb5vaKzgzsBp1Kb+DlmwNq3LD8CYpkgQ
         SwRTy3xgEedLB6WtRyUgQ3eetl/6P+7GMvH3DiHfrEBBf3+6KxORHPI8Q273KpEC7Pu+
         tXAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=bk0eFM7Pt45/4UZBf0WEeBqjVENjKUVI2arcxJ5ZxLI=;
        b=JwcE12+3lFC9eSauhNFwZpoMsL5W19EZJNPatKMBa6pa8Qu/Koq9iSAVtinsMriSom
         MvLRa4rXiWrvSogXXOk2NAIzJdWTwmyJyTNxoDdQ6PAa0WzqVLnkTPx+Ho/18evwjKjc
         0divZeZjL8WRYjkip+QypgSSJxMPrGkViB8iM4V9gfFAude0/sfTk/8HIB9RYA7SVVS4
         EhEz2STiN8P38dxKg+dkBBlxe3tt+BZ0By8I980FvRF3XFIaXBw1KjTyg0K0mIqyI5kG
         XSaAAcYpqgAUIyltrpNzL2fDC7jinBksIVK8X7RPhhN4xLqSwr7bNWe+eBEbNoUo/Xd6
         XOAQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of linma@zju.edu.cn designates 61.164.42.155 as permitted sender) smtp.mailfrom=linma@zju.edu.cn
Received: from zju.edu.cn (mail.zju.edu.cn. [61.164.42.155])
        by mx.google.com with ESMTP id u12-20020a170902e5cc00b00156a03969e8si7601632plf.307.2022.04.10.23.02.52
        for <usb-storage@lists.one-eyed-alien.net>;
        Sun, 10 Apr 2022 23:02:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of linma@zju.edu.cn designates 61.164.42.155 as permitted sender) client-ip=61.164.42.155;
Received: from localhost.localdomain (unknown [222.205.8.117])
	by mail-app3 (Coremail) with SMTP id cC_KCgC3f3mHxFNi5gvbAQ--.41928S4;
	Mon, 11 Apr 2022 14:02:48 +0800 (CST)
From: Lin Ma <linma@zju.edu.cn>
To: stern@rowland.harvard.edu,
	gregkh@linuxfoundation.org,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	mdharm-usb@one-eyed-alien.net
Cc: Lin Ma <linma@zju.edu.cn>,
	stable@vger.kernel.org
Subject: [usb-storage] [PATCH v2] USB: storage: karma: fix rio_karma_init return
Date: Mon, 11 Apr 2022 14:02:46 +0800
Message-Id: <20220411060246.9887-1-linma@zju.edu.cn>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CM-TRANSID: cC_KCgC3f3mHxFNi5gvbAQ--.41928S4
X-Coremail-Antispam: 1UD129KBjvJXoW7CrWUtw48GFW5Xr48CFyrCrg_yoW8GF1kpa
	ykJry5CFyUJF1fGr9rX34DuFy5Can7tFWjga4fG3ZY9rsrJF48CF42va4093ZYqrySkF1x
	tF4vkFyagrn8AFDanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUUk21xkIjI8I6I8E6xAIw20EY4v20xvaj40_Wr0E3s1l1IIY67AE
	w4v_Jr0_Jr4l8cAvFVAK0II2c7xJM28CjxkF64kEwVA0rcxSw2x7M28EF7xvwVC0I7IYx2
	IY67AKxVWDJVCq3wA2z4x0Y4vE2Ix0cI8IcVCY1x0267AKxVWxJr0_GcWl84ACjcxK6I8E
	87Iv67AKxVW0oVCq3wA2z4x0Y4vEx4A2jsIEc7CjxVAFwI0_GcCE3s1le2I262IYc4CY6c
	8Ij28IcVAaY2xG8wAqx4xG64xvF2IEw4CE5I8CrVC2j2WlYx0E2Ix0cI8IcVAFwI0_Jr0_
	Jr4lYx0Ex4A2jsIE14v26r1j6r4UMcvjeVCFs4IE7xkEbVWUJVW8JwACjcxG0xvY0x0EwI
	xGrwACjI8F5VA0II8E6IAqYI8I648v4I1l42xK82IYc2Ij64vIr41l42xK82IY6x8ErcxF
	aVAv8VW8uw4UJr1UMxC20s026xCaFVCjc4AY6r1j6r4UMI8I3I0E5I8CrVAFwI0_Jr0_Jr
	4lx2IqxVCjr7xvwVAFwI0_JrI_JrWlx4CE17CEb7AF67AKxVWUAVWUtwCIc40Y0x0EwIxG
	rwCI42IY6xIIjxv20xvE14v26r1j6r1xMIIF0xvE2Ix0cI8IcVCY1x0267AKxVWUJVW8Jw
	CI42IY6xAIw20EY4v20xvaj40_Jr0_JF4lIxAIcVC2z280aVAFwI0_Jr0_Gr1lIxAIcVC2
	z280aVCY1x0267AKxVWUJVW8JbIYCTnIWIevJa73UjIFyTuYvjfUoOJ5UUUUU
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20220411060246.9887-1-linma%40zju.edu.cn.
