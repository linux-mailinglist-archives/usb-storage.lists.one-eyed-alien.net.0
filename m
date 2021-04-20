Return-Path: <usb-storage+bncBDU5DXUG4MFRBLH27KBQMGQE3HX73BA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wm1-x346.google.com (mail-wm1-x346.google.com [IPv6:2a00:1450:4864:20::346])
	by mail.lfdr.de (Postfix) with ESMTPS id 800EB3657A9
	for <lists+usb-storage@lfdr.de>; Tue, 20 Apr 2021 13:38:21 +0200 (CEST)
Received: by mail-wm1-x346.google.com with SMTP id n11-20020a1c400b0000b02901339d16b8d7sf1891682wma.7
        for <lists+usb-storage@lfdr.de>; Tue, 20 Apr 2021 04:38:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618918701; cv=pass;
        d=google.com; s=arc-20160816;
        b=v68m7+OIseudAGbjD+QFMsF5uxTFZbpc1l3MCeDw8gBQEPJz9A1U1788TlTfXzMysD
         /KRjaorsiMlgORpxrgJpS/eqOpsJ5/8kwFfYPm8uzdZpw69nD9dYyUKSl3lS4k8JoHtK
         sZ7iGk/JWcCS3pli9wpBnTUmpjJEmJZJoqT91MSqrEoSmFtcARwecRbBDDGbsyVGdrT9
         0/ECExGgHATihHTpLmmqaNM1CmNXYHpXOVB19HBEMEvA628fU0RhpAba8WuM5xFhepZ+
         YgdIFOvXoSzE6oF3Uw7vdbg4++W0X2ZsBqbwiflkgJOFkdPqRWWdFNVkGWe8O4hgKmC5
         H6FQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=OT9qRwyRJsCsckIV7VQ/wUs+Z4/ktO/eARWGuFD2iFc=;
        b=omQdQ785wyBHeG2vUXiPJStmTwqLcVng/3sy94wfFXgAIWXJQaWdQJPsFBQymIBThB
         dWjPEV0K4UhQ/hBsYuUntCfZJf7OfDKsFBODjt0mMmlmGTxvPH6NT/ashUVao4PeJSuh
         NZw8UF5dItwgRZiNUKsV+H0ReVHQSbzY5jxi2FevQO3fU1XYga/LOV548qEM0HQrcoO+
         xQGzpy49A0Yh1iqzuDtLuQssuIQtIVxm7ZZGPw8IuXfFG261+sLTw++0Cw7+8iwyTyv7
         HH5jWL2KJLWqF0h1LYO1Sjc4UITOxvTt4NhEFol3WuOU8aKDKDPEAI3hZ8xBdo0EHotg
         dLAg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: best guess record for domain of colin.king@canonical.com designates 91.189.89.112 as permitted sender) smtp.mailfrom=colin.king@canonical.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=canonical.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OT9qRwyRJsCsckIV7VQ/wUs+Z4/ktO/eARWGuFD2iFc=;
        b=WE1C8EX3HqNtskHLLcKyHX3W9ADFkmQYlHVRCo2JnsUJEHUBEYAPqixQWAdCt4PxFF
         woqOsEpfi7XtQgCq7esE1d8jYvC2Jg+BC5jvCTyO7j2m64BXiPDe9timRZMS/70+nGZU
         qxsOliBrw+7Do28CBIW1ERnoYlLpEY38ewxZs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OT9qRwyRJsCsckIV7VQ/wUs+Z4/ktO/eARWGuFD2iFc=;
        b=pk/CAhUfOcEOdQiRObjDCxINczXqsZPvHCBBZKPO+1uHYgyIuC4t7rPEOZ8mu8u7Cg
         M+xzYUxlA6KE/Zphl9YS63IjGBtnKlCFWi+QW2Zx7ZGtgT+l8bPrbzdx7/SISvL5A6D0
         Qm5H2p6SahV9n/08mRLh+t3iGfA9zTr4TdtNQ6VmKfSgiioVUgRSrLNnTvo68odJUNUE
         QED9VXBWzzOJE1PWnSgu4rE508te5I6rB5NdpNC/nKZz15AUPIaRhQKOpAVdlG0M7xLY
         qx6uTkvBG4yF5fB8V25Ab331RKUG/JUnkF3yy6pib3J8UXGuypp9SVKvRmpgSV6tj07M
         YjBA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM530LQblgza3krEInBR1HhHT7N1Mks67sAjLavBdbFKSdqW/Um4li
	TYan+byIRDcHSs3aprKlLFZ0jg==
X-Google-Smtp-Source: ABdhPJxq5KNINbVMuKPJQN9g7CRqCvNwMrCilWxUPr6NKSF5lzUe3fgKCDho0WoA5GuWM7e8CgPHrw==
X-Received: by 2002:a5d:5407:: with SMTP id g7mr20357414wrv.149.1618918701266;
        Tue, 20 Apr 2021 04:38:21 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a5d:6804:: with SMTP id w4ls12203608wru.2.gmail; Tue, 20 Apr
 2021 04:38:20 -0700 (PDT)
X-Received: by 2002:adf:9245:: with SMTP id 63mr19277814wrj.324.1618918700007;
        Tue, 20 Apr 2021 04:38:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618918700; cv=none;
        d=google.com; s=arc-20160816;
        b=KQPnYq1k/hxx7P8VtIH2maA8ALGwd7u3VU9fc8zDQ4fLjiOehJdrgRByeo7IipUx4R
         KLUV5PuLsDKMtYj1n0Ru3UQLzqo2xxGqvnr9x6exhEEvmDDF0qY3cZQvI8PRUgorRFpm
         M4Ng/YudPOHxz18xyMkIS7taP/N9+y3G17F15Umzu0gtACldA2sWtWWpwCaN1RS07Csb
         Twg4GZY+lhg6hHASahKrEZkV9Kdwomo4tJ887Y3KS0UVAE6Ytu0O282toY4VYKAQhpXD
         bZjGCoVLh/1EIT0OmLGqe0uJnh3vjwukImax9i4xz3XQRj1EHoF7OS36HmHtpz3zsUIX
         WiUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=SaCVXQ2EYw4XRuWxy54SEPvi7y1MnfBUzFaHVcc7kDg=;
        b=K2WDBEIoEa8QQr3GOSzVameMgdlq4902pONxW0Soxci2ma28XKnq7dCJSsDt72w8Bt
         RuNfi/6AI34pPUE6IwfSOuCEKUKK4NxDd5FQHqq9V+klsfx3ZZTOngp7KL1arJ+OYNbm
         bz6N6qdNTLeCfYezEW6v41srQbYFtqf6BGG7wDEe+/vlX4GfvxaDfXga0a2GvheAO524
         XdZfsjnaR6tcg0Q8btvy/HxRxjhtsBo2w0106vorspz2AWa1pAL4i/Onf/FSaugUnM4R
         b72cbzXvAhlDNAeStrdTPcdyijtukyobQQXO8kiI/VpOoozlVPTI4/yxwxhpzKJ3RCD5
         pz9A==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: best guess record for domain of colin.king@canonical.com designates 91.189.89.112 as permitted sender) smtp.mailfrom=colin.king@canonical.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=canonical.com
Received: from youngberry.canonical.com (youngberry.canonical.com. [91.189.89.112])
        by mx.google.com with ESMTPS id r3si19263282wrp.527.2021.04.20.04.38.19
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Apr 2021 04:38:19 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of colin.king@canonical.com designates 91.189.89.112 as permitted sender) client-ip=91.189.89.112;
Received: from 1.general.cking.uk.vpn ([10.172.193.212] helo=localhost)
	by youngberry.canonical.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.86_2)
	(envelope-from <colin.king@canonical.com>)
	id 1lYohu-0005Og-EL; Tue, 20 Apr 2021 11:38:18 +0000
From: Colin King <colin.king@canonical.com>
To: Alan Stern <stern@rowland.harvard.edu>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Cc: kernel-janitors@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [usb-storage] [PATCH] usb: storage: datafab: remove redundant
 assignment of variable result
Date: Tue, 20 Apr 2021 12:38:18 +0100
Message-Id: <20210420113818.378478-1-colin.king@canonical.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: colin.king@canonical.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 best guess record for domain of colin.king@canonical.com designates
 91.189.89.112 as permitted sender) smtp.mailfrom=colin.king@canonical.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=canonical.com
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

From: Colin Ian King <colin.king@canonical.com>

The variable result is being assigned with a value that is
never read, the assignment is redundant and can be removed.

Addresses-Coverity: ("Unused value")
Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 drivers/usb/storage/datafab.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/usb/storage/datafab.c b/drivers/usb/storage/datafab.c
index 588818483f4b..bcc4a2fad863 100644
--- a/drivers/usb/storage/datafab.c
+++ b/drivers/usb/storage/datafab.c
@@ -294,7 +294,6 @@ static int datafab_write_data(struct us_data *us,
 		if (reply[0] != 0x50 && reply[1] != 0) {
 			usb_stor_dbg(us, "Gah! write return code: %02x %02x\n",
 				     reply[0], reply[1]);
-			result = USB_STOR_TRANSPORT_ERROR;
 			goto leave;
 		}
 
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20210420113818.378478-1-colin.king%40canonical.com.
