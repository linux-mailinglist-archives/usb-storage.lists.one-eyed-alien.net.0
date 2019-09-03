Return-Path: <usb-storage+bncBCTPRFE7TUKRBD74XDVQKGQE6DPSBZA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x545.google.com (mail-ed1-x545.google.com [IPv6:2a00:1450:4864:20::545])
	by mail.lfdr.de (Postfix) with ESMTPS id 6069BA666C
	for <lists+usb-storage@lfdr.de>; Tue,  3 Sep 2019 12:18:55 +0200 (CEST)
Received: by mail-ed1-x545.google.com with SMTP id w22sf10268983edx.8
        for <lists+usb-storage@lfdr.de>; Tue, 03 Sep 2019 03:18:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567505935; cv=pass;
        d=google.com; s=arc-20160816;
        b=cNfAlRsM4IzEovE50zUStinB2lPsC8QPAqVecaDWqe0ChhK8QQxwoFE+Nrdcnuh9RH
         xq7Pex5U/NW+9Mwq1TqR9sLshwkjeG4iWDLdJkosuN3YrUXcY5sDwY8ztQeZc9xKRLDY
         hOnU3nejxU9VhYIWK3oFGPCxmLoPkzOp1hV6LI7YqA5Y4OJJhHSq3J8krZDG5mNT5dMO
         TuLLc84TvaAXQ3bdxZw7wvuRyA+ajJTU6V0odErIkh3GhR8z6w3jfIKUqF+48PN+bDKu
         QTtDLCFAK9I9naBFdD3pwuWO7R31KOctorR+MBtucJ2znK++ZvOx6SRUTwP2ABjN8RPr
         6jHQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=jNh9FqYMeukERtnLa2+w+bGSiQPh8icL4bWWepPcMC0=;
        b=WisZbXSR9PfZ/mcAI3uJWv5Hf3mrD6MmgDdG65xFKCzrbluRryCc986ZrviKcpckuI
         +F2stlhzeHsiBPmQpTj3J4n8LY2muaUSYEQAZsRje9uIG8fKYK/g5B0ihrVimqCwhswo
         hUC+cnqW8L9hbNdNRGFQUV2YsiJQ26DtF7JYTWjH137/0celJLJw0829O9UtZe0aDgE1
         Diug1q9TXdnNaNlETrkOZUB93fUFsP2wumHPuEJ6KqovEjISZWS5hKcAHsK3t6oFT1Hh
         TfRVn5z7dNz300LeItDzTrtF4hm4TdL3lRRtqrTEEoYv8XeyQFFghoiBzs/VGOYmRLdO
         mHSg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of oneukum@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=oneukum@suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jNh9FqYMeukERtnLa2+w+bGSiQPh8icL4bWWepPcMC0=;
        b=MsxNPvc5A93PU5lDcuMv2mkt/uwUie4PDgTIP5qYmnMtkmSyoOOhjrw48R9w1ynI8H
         rZDfVPvE+0QGK9bEyGY8YWB7SnfPDD5HTrJiKiUW+1pFuihWgbuuQ4XaLAtscGA7ja9j
         VEMd+LtNKSlx+ZIvacPz1bHYJISrPpuBvEicI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jNh9FqYMeukERtnLa2+w+bGSiQPh8icL4bWWepPcMC0=;
        b=kbtdl7v5hU49mgiwoCH0bhziMFFrvJgZCiKzpDroZiaRfK12UqVPSgg+F5fG66Bv9z
         JRaJwTGwdboAU8k7wEd1kuonQ0Kr0C2Ql7LyRAT3PZLnT/neC1daDGNT1a17TbB5kWs4
         lVCh59MNuedbaQCGxoxAnitrZ/mbXuuEfX7c3wIjDv0yqQiR5c0w+gi4NKapuGhgMhNs
         PxWBdVGWBCAdTxzNWSd/iR3P/F+qi3b0yT2ImUR5nBxLRMtYHaQnsCalGFUAtydgfyTn
         dL7hp9CIa1Ntv82UNKteoroM2w4ihJYIPXGcJnLQvNc/MxLtCFzRTI+9NDl0kEs0vXTf
         t9Gg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAX7xNeY/7KjEnmy9GMZee/rV81maVYgg/z6vTO9CeTqOX0rWhpJ
	HQb+vhbqHDYIUaqd0pdgIsOJUw==
X-Google-Smtp-Source: APXvYqyjpiLUbNVTqwVKZhMYCVWC4RJYaOyQoBa7aWEksMBWdu5CzqgHx0HkUlisplGMFq0Onddz8g==
X-Received: by 2002:a05:6402:759:: with SMTP id p25mr34989108edy.119.1567505935071;
        Tue, 03 Sep 2019 03:18:55 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:aa7:c3c5:: with SMTP id l5ls4245581edr.4.gmail; Tue, 03 Sep
 2019 03:18:54 -0700 (PDT)
X-Received: by 2002:aa7:cd17:: with SMTP id b23mr30768247edw.278.1567505934683;
        Tue, 03 Sep 2019 03:18:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567505934; cv=none;
        d=google.com; s=arc-20160816;
        b=Tqm/b4zPZH+HwrocVbt6yzR4Js8+0q/MFmy4udJRDmTY/8j5rDsSLXlsCGf8ZLiWAT
         1pdBkCapfBrKzMuQG1eVluhuV8wrLwtP75P9oJxsH9fT4xJRNw67+8XC6x2iIaa/JRLT
         tzpJrUjVPJwWoYnvnCWzxRHtSjBLSSnkZ/rd0mJooNYVc3kbhx8yhEyr4/moPZkopJiW
         Lm0BE7mRX3RsNRZSJaqtsKhK/y7V+qawQELlZYEysrUAlBT3WMG493VjxZEY4xcdQCCr
         cho3ntJ178Zm6+nhdjSD5H05lZImQBebhF4/6eoaDnt0BzJLcA4hI4icbveUxUQqUlSy
         597A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from;
        bh=NXtN9KCyWeC5m98misrqVbUJceFGbGpvpWnjs/0WoYk=;
        b=ItjDFWoIrkjmp52vcjrkrWDcgD9H5GrPOoYo4OSKzCF5DZZ8OWdS+5hsPHkkhi9gln
         ZZTjL2siNY6o0H8bSGoT1+ec5m6R1eTgpvcDA/ViQdxLRWIfVNDk9p8BjlUdkTYKgQQh
         lAeDS43aJeygboIf6eg4tjXQ5uo+L7EdonRdrTWshVOA+/noErRQQyk9C6gltD3XGmY1
         scu2mPdxjYlDa2Vv5qI9wkUduwyJ327jTRc8iZyv8e9EXa5+V63A2UJ7eyaQ/MFC4We4
         hQkPrC6vDzqoVCb7C8CCMRHfH88GhOqfKTKMKFTVvw2tIAMOkn+G/44Vde43FPKZlu3S
         PIbQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of oneukum@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=oneukum@suse.com
Received: from mx1.suse.de (mx2.suse.de. [195.135.220.15])
        by mx.google.com with ESMTPS id y19si6915471edc.363.2019.09.03.03.18.54
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Sep 2019 03:18:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of oneukum@suse.com designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
	by mx1.suse.de (Postfix) with ESMTP id 6948DADDD;
	Tue,  3 Sep 2019 10:18:54 +0000 (UTC)
From: Oliver Neukum <oneukum@suse.com>
To: martin.petersen@oracle.com,
	jejb@linux.ibm.com,
	linux-scsi@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	stern@rowland.harvard.edu
Cc: Oliver Neukum <oneukum@suse.com>
Subject: [usb-storage] [PATCH] Revert "gpss: core: no waiters left behind on deregister"
Date: Tue,  3 Sep 2019 12:18:40 +0200
Message-Id: <20190903101840.16483-2-oneukum@suse.com>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20190903101840.16483-1-oneukum@suse.com>
References: <20190903101840.16483-1-oneukum@suse.com>
X-Original-Sender: oneukum@suse.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of oneukum@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=oneukum@suse.com
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

This reverts commit f95aec18e46af9d7fb6f312020824d536dd720dd.
---
 drivers/gnss/core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gnss/core.c b/drivers/gnss/core.c
index 0d13bd2cefd5..e6f94501cb28 100644
--- a/drivers/gnss/core.c
+++ b/drivers/gnss/core.c
@@ -303,7 +303,7 @@ void gnss_deregister_device(struct gnss_device *gdev)
 	down_write(&gdev->rwsem);
 	gdev->disconnected = true;
 	if (gdev->count) {
-		wake_up_interruptible_all(&gdev->read_queue);
+		wake_up_interruptible(&gdev->read_queue);
 		gdev->ops->close(gdev);
 	}
 	up_write(&gdev->rwsem);
-- 
2.16.4

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190903101840.16483-2-oneukum%40suse.com.
