Return-Path: <usb-storage+bncBAABBMHXW2JAMGQE6A2OB3Y@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc45.google.com (mail-oo1-xc45.google.com [IPv6:2607:f8b0:4864:20::c45])
	by mail.lfdr.de (Postfix) with ESMTPS id 72B334F64C0
	for <lists+usb-storage@lfdr.de>; Wed,  6 Apr 2022 18:11:30 +0200 (CEST)
Received: by mail-oo1-xc45.google.com with SMTP id o136-20020a4a2c8e000000b00321224df797sf1496741ooo.20
        for <lists+usb-storage@lfdr.de>; Wed, 06 Apr 2022 09:11:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1649261489; cv=pass;
        d=google.com; s=arc-20160816;
        b=0jt60C9cVsDJMnpsbmCADAWneWAMmqiw9Svk2jFzouYyBk13TcuL4s3I2N4XPQfjzQ
         8RztMSbiFeogXLKEbzIeUfvAnIcXg/7MLPyjcA3/CdVq4k+4TxIrgDPfXREEI1Itp7aZ
         NyBfEx/eizX4JIx9xSoYUc+30AKQ9BVGIPGHuNCrS/y0psXNsYARMgOlw4xxwW/2cMzR
         H8pTBkwX2N6ws1uNuSv/1n+LN91FlCwngjdyNXjd7Pl76dk9oJuVt/GLHTmtevI+5qGh
         rlDkzD9OEnZMfkAbgMm+MVcNA4jCGT9FxwbbpLNyz6P6w/WvVOtMluDP9gxMZwf3gKNL
         9E5A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=Q3VDsWzkAyyQFqtkt3NusWPUua6yrWC6hKXRW1aXrYo=;
        b=EIMx0CAd6euHoM00h7jQoam8xrYoL2I8ujKIGrzpTKIPM2tWqQ0Xi9iXZe1h4Yd8Q3
         0igbwIm+VgEZ0OQYwbbFtYYfebtRkbAhr5PLfB8O1g1TPQj7DfGm1kUEike15XHk8sdY
         Ny+YM1Cu4b9JIe/u9OtHBbJACg1z+jqMj79MetOrQz7kyGSSEBles7j7eyGI4L84XRGY
         QmtMeBG6e9zVhfvh+0C/uZeHs8QrnPX5hSOVvjS/pkGo6PbZJVaOvB093R3eZbxrbpSF
         N9GZvNkXXQ9EraaOmR/S8ejUpdA+JqWH/ggHksZBOA2HLD2KNCnGvnb/St35bvfeSUvP
         TNIw==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of linma@zju.edu.cn designates 61.164.42.155 as permitted sender) smtp.mailfrom=linma@zju.edu.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Q3VDsWzkAyyQFqtkt3NusWPUua6yrWC6hKXRW1aXrYo=;
        b=D9gABu3f/RaTSk8ni/mlsfzjM+ETX57toZoHY2HKGsDqJyD61/JDT/reAioeUohxXH
         IO+u8ht6TpuzgDloqGcrAGEDbMbst+TslLcWquBd4f2jWaE5gKY795PEY3EuuAbbfKAH
         11CMGpjrNQ+EFzt7H/L4pN4LkgMa5lR/RpgcU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Q3VDsWzkAyyQFqtkt3NusWPUua6yrWC6hKXRW1aXrYo=;
        b=7jCJyVB/iVILo484iRd/NoBj2EQ0h4oO3l9ix6m8MDvviLZLC5YU9EH6Ok2bAl8TaN
         cuFoaxDqvDgkpUSiuy7jplw/y41tsOGArn6U0JYAA1h68lZh6OW5hwNayp8QA0jTcPdm
         nYdiE+JGCaAFoCnzHZGqCqRe0X/E+LfKULL0G3t54/ulnKSi6a+pCt9WOUoAN9fXyRo5
         1F6VGSbEhfANhxzNn6F8tPgTvStKm8UO4dP/1X2LqeLneAY6Z0HMM1//o++12lloFfBb
         NghyxOx6L3JeJAW3Efmgxx6Q4fkACQ517iMeyzxVmAOGtpKRjSrNeSYArnPnBq5SAIx8
         p4kA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM531tZfolzY+tf+URUD/Adkbu9KVr5qhOpy50W3u0jm4AzZyzVPj/
	YvQJqac8FQK26BN9e5K2YDccdA==
X-Google-Smtp-Source: ABdhPJzXxw7YQkOsDAzJxKqZlBl3/DE0+/hurAywhYlhoYRQLlD5oCP8c5O76JBGM6ebeBIYqSk8Kw==
X-Received: by 2002:a05:6870:5491:b0:dd:b4d8:ab49 with SMTP id f17-20020a056870549100b000ddb4d8ab49mr4213544oan.3.1649261489169;
        Wed, 06 Apr 2022 09:11:29 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a9d:7d88:0:b0:5ce:47c:71e8 with SMTP id j8-20020a9d7d88000000b005ce047c71e8ls12737otn.2.gmail;
 Wed, 06 Apr 2022 09:11:28 -0700 (PDT)
X-Received: by 2002:a9d:6e01:0:b0:5cd:8f04:472e with SMTP id e1-20020a9d6e01000000b005cd8f04472emr3240054otr.324.1649261488655;
        Wed, 06 Apr 2022 09:11:28 -0700 (PDT)
Received: by 2002:a05:6808:2123:b0:2c8:6cd2:3c23 with SMTP id 5614622812f47-2f93b040900msb6e;
        Wed, 6 Apr 2022 03:03:14 -0700 (PDT)
X-Received: by 2002:a17:90a:cf94:b0:1ca:9374:97fc with SMTP id i20-20020a17090acf9400b001ca937497fcmr9122307pju.162.1649239394455;
        Wed, 06 Apr 2022 03:03:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1649239394; cv=none;
        d=google.com; s=arc-20160816;
        b=RRpkinGz/zndvPoQ91JYnW9MhgYHUuOY1EgfnD7yn6dKHJbSgn88k17sd0aiGDeovb
         0pzaffqBPB0qWyGcrlHsIdmghSTp1ojxV77NslVo5ZEviFWpbBorPM/tqh2Da6IL/aX3
         Yu/cRWJ/FjqxTzVcgp/02NO1E5coh1SxNdQOMqdYCJXYwUO4DTIVoRL3vePqcLxdogFc
         NJnE4vHaNeqNwrjinNV1pTi/NcT441uR0OmF1PIEWv4v+TpAfa3x/lcqN876Go/jFf05
         Vc3uObsb9NFI/FpsLPZ9neSFr7KAjD4CbK2J58PYKkO3Ra7R7OgmD7VFAe7VlReIS7DS
         sGMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=l0z+v+JA62QoHVPjnJLE+gq4gRirEX7WYMGzt2MH49w=;
        b=DlAsjlJcDHeiPyQc1poGd1/Rt1Ove3eYhkz4r/dIaryaLWHCwz/qAJzHKpfc45Ijiv
         6HXNn8EBrcDPyuoRHnmCv6p9WAWGoYMi03wwVNNLP/y1QZyckzagL0jwAkjyTdaY0vDi
         yfpKsnup/+EbUjDFd5TXDaQdPdWa3W7GfdPLIanFSRVzrqlZHypg5ZSsLp1lgLrf0gXq
         g4jwRrbIJt/8Hb3QBK0b33M1qG52Rtovb18/2V+kS3uFB8iwS5v2+LRluoO7+q6LETbx
         eSUNuP2Yzz8qKUvJsmhCXoQqHPybeYZn/bceO+c4c7v9khv5tSAvaaxcQZZzbc4m63z8
         5uAg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of linma@zju.edu.cn designates 61.164.42.155 as permitted sender) smtp.mailfrom=linma@zju.edu.cn
Received: from zju.edu.cn (spam.zju.edu.cn. [61.164.42.155])
        by mx.google.com with ESMTP id b17-20020a170902e95100b00153b2d1664esi14639587pll.598.2022.04.06.03.03.13
        for <usb-storage@lists.one-eyed-alien.net>;
        Wed, 06 Apr 2022 03:03:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of linma@zju.edu.cn designates 61.164.42.155 as permitted sender) client-ip=61.164.42.155;
Received: from localhost.localdomain (unknown [222.205.4.190])
	by mail-app3 (Coremail) with SMTP id cC_KCgDHGcpfZU1iUTt7AQ--.13459S4;
	Wed, 06 Apr 2022 18:03:11 +0800 (CST)
From: Lin Ma <linma@zju.edu.cn>
To: stern@rowland.harvard.edu,
	gregkh@linuxfoundation.org,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	mdharm-usb@one-eyed-alien.net
Cc: Lin Ma <linma@zju.edu.cn>
Subject: [usb-storage] [PATCH v0] USB: storage: karma: fix rio_karma_init return
Date: Wed,  6 Apr 2022 18:02:59 +0800
Message-Id: <20220406100259.6483-1-linma@zju.edu.cn>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CM-TRANSID: cC_KCgDHGcpfZU1iUTt7AQ--.13459S4
X-Coremail-Antispam: 1UD129KBjvdXoW7Jr47urW7ur1rAF1UAw47Jwb_yoWkJrcE9w
	4UW34xZF1UCFy7Xw1Utr1fZryIkw48ZrnYvF95t3yfGF1DAw4xAFn8ZrZ2yF98JFWxArs8
	Aws3uF93J348ZjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUIcSsGvfJTRUUUbxxFc2x0x2IEx4CE42xK8VAvwI8IcIk0rVWrJVCq3wAFIxvE14AK
	wVWUJVWUGwA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK021l84ACjcxK6xIIjxv20x
	vE14v26w1j6s0DM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26F4UJVW0owA2z4x0Y4vEx4A2
	jsIE14v26rxl6s0DM28EF7xvwVC2z280aVCY1x0267AKxVW0oVCq3wAS0I0E0xvYzxvE52
	x082IY62kv0487Mc02F40EFcxC0VAKzVAqx4xG6I80ewAv7VC0I7IYx2IY67AKxVWUJVWU
	GwAv7VC2z280aVAFwI0_Jr0_Gr1lOx8S6xCaFVCjc4AY6r1j6r4UM4x0Y48IcxkI7VAKI4
	8JM4x0x7Aq67IIx4CEVc8vx2IErcIFxwCY02Avz4vE14v_Gw1l42xK82IYc2Ij64vIr41l
	42xK82IY6x8ErcxFaVAv8VW8uw4UJr1UMxC20s026xCaFVCjc4AY6r1j6r4UMI8I3I0E5I
	8CrVAFwI0_Jr0_Jr4lx2IqxVCjr7xvwVAFwI0_JrI_JrWlx4CE17CEb7AF67AKxVWUAVWU
	twCIc40Y0x0EwIxGrwCI42IY6xIIjxv20xvE14v26r1j6r1xMIIF0xvE2Ix0cI8IcVCY1x
	0267AKxVWUJVW8JwCI42IY6xAIw20EY4v20xvaj40_Jr0_JF4lIxAIcVC2z280aVAFwI0_
	Jr0_Gr1lIxAIcVC2z280aVCY1x0267AKxVWUJVW8JbIYCTnIWIevJa73UjIFyTuYvjfUon
	mRUUUUU
X-CM-SenderInfo: qtrwiiyqvtljo62m3hxhgxhubq/
X-Original-Sender: linma@zju.edu.cn
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of linma@zju.edu.cn designates 61.164.42.155 as permitted sender) smtp.mailfrom=linma@zju.edu.cn
Content-Type: text/plain; charset="UTF-8"
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
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

The function rio_karam_init() should return USB_STOR_TRANSPORT_ERROR
instead of 0 (USB_STOR_TRANSPORT_GOOD) when allocation fails.

Fixes: dfe0d3ba20e8 ("USB Storage: add rio karma eject support")

Signed-off-by: Lin Ma <linma@zju.edu.cn>
---
 drivers/usb/storage/karma.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/usb/storage/karma.c b/drivers/usb/storage/karma.c
index 05cec81dcd3f..b8a4ae1aa22a 100644
--- a/drivers/usb/storage/karma.c
+++ b/drivers/usb/storage/karma.c
@@ -178,19 +178,19 @@ static int rio_karma_init(struct us_data *us)
 	struct karma_data *data = kzalloc(sizeof(struct karma_data), GFP_NOIO);
 
 	if (!data)
-		goto out;
+		return USB_STOR_TRANSPORT_ERROR;
 
 	data->recv = kmalloc(RIO_RECV_LEN, GFP_NOIO);
 	if (!data->recv) {
 		kfree(data);
-		goto out;
+		return USB_STOR_TRANSPORT_ERROR;
 	}
 
 	us->extra = data;
 	us->extra_destructor = rio_karma_destructor;
 	ret = rio_karma_send_command(RIO_ENTER_STORAGE, us);
 	data->in_storage = (ret == 0);
-out:
+
 	return ret;
 }
 
-- 
2.35.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20220406100259.6483-1-linma%40zju.edu.cn.
