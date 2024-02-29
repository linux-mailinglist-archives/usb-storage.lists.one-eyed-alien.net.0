Return-Path: <usb-storage+bncBCFIH5VMRQNBBX7P76XAMGQEHCSDEEA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc48.google.com (mail-oo1-xc48.google.com [IPv6:2607:f8b0:4864:20::c48])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E04386BF60
	for <lists+usb-storage@lfdr.de>; Thu, 29 Feb 2024 04:20:01 +0100 (CET)
Received: by mail-oo1-xc48.google.com with SMTP id 006d021491bc7-5a0312e60fbsf461201eaf.2
        for <lists+usb-storage@lfdr.de>; Wed, 28 Feb 2024 19:20:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1709176800; cv=pass;
        d=google.com; s=arc-20160816;
        b=i8lgjj2kJ9Jo6/Eps8DNQqfoInoCyScvU9UsWE4eVzMxBZ4fXIqfp51KqeXyUfdyIa
         X3IHCt/SfvbnNycOQArB+QNE0l5gh1lqejkW8vHuhnVwWkmyFuoqr+YMlXoA2eunBZaz
         XDqC7SnQ1G9e2Jd1aVPspKY8dGb0w2EWrU8oR/nN6Ezx61oVPljLYnkV/njAZ7vxviXF
         1OMmbbe9NCJNKB8F9u9QiHlx+GbBdLE+v4QT7bb/9eJBmZmtMfBAYXN9Kn5Ok+lsIen0
         YttGI0bjaFJabzNxpZ7e7oCkWxuS2Cvhkxt/3rbLrIlzEBxAdh+2IuxoytPKTCejh9g0
         96fA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:dkim-signature;
        bh=SfKEQiy7Fx7LMAWlqXWRNKA8P0tKCgg67BL8VfwsBxY=;
        fh=Ru8P7r1fBCOTqzylO9U1X+FwnvFFewxyuNIlz410+Vs=;
        b=mEa4ZHfu3ItJZOlpH8JymOs4uLvTVWdX12oFSiS6QHBB8Wj0KS+rFJf1/QwVvpw+C1
         GXJLBy8WAJBiSWxCd4CLYpQNSh0LWrHJsMZk2hEWbGWQo2nIu4n1Jj3VZPDQ1T9ZRWoF
         OYzP2exWQlauL4+s6D6agnOZQZyB4CUBWHAywmZlbCiGn3kooFPlU3tJ9JI4r17aRmhK
         tWj3saiCLBby+ZdKkyab/pLOguDOlkh3SICpl2lD4YP5LAXVZL8/rXBZPJZc/meedBcU
         Ys0Nxu/5MEhVzKEdhej6zerYgQeiUUYKrO/K+Itol5oPI4ephv18RrxlzCjRbRS9xyXN
         rPjw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of weitaowang-oc@zhaoxin.com designates 210.0.225.12 as permitted sender) smtp.mailfrom=WeitaoWang-oc@zhaoxin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1709176800; x=1709781600; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=SfKEQiy7Fx7LMAWlqXWRNKA8P0tKCgg67BL8VfwsBxY=;
        b=CBBDcFJA6yn5ATS5fOd1yAG30I+KNvqYzn2BxupBUq7dBorOvmjaePChjR4JzN7nE1
         4oe+dgEsh9AuY+6X1BJWmYFc+QhNFdz05pbN1iU0QGZmrH6QWcCgUC0ZWfvC+pDY/cR1
         toB4U3iY5F5H8Tb+gkLiJCo60NmgDWOWjOOv8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709176800; x=1709781600;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-beenthere:x-gm-message-state:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SfKEQiy7Fx7LMAWlqXWRNKA8P0tKCgg67BL8VfwsBxY=;
        b=eMBEG2FunUn8OkjMmo5aEsVrqa9ihJzcVSsHgvIx85/hJUH9+BraAb4k7aTJ8I8T9t
         OC1OVzGo3rco9jDsmSpMIFPRaFYCPtJBXMi4zeLnlDZwZENxN4NneqN6RYXQRc3j/7dQ
         4AUqRdOui3exMtTM4whjVp9nv/UB3U7HvymTPb8sVMFuZI+bqHhMBPktezAd2UMNQl2Y
         fEcKduGI7s2N7asSfnh0fzYCyMGpvQph8g5E1ClMaDcsB0/vBESU8+XUsXcs4F141zVt
         fk8bndAniWeeWdtbKlRm99aCVMT6YiaQ5BWy7MjHHADLW7pskWpk93nveRmyuraYV+IL
         oLqg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVCd+QMPszHSBJg5Q5Lpg3rei9jZ4JtIkl8bX4uhK+8F6YSAOvWoM4CLJ0+HvdlT18Ewv7XW1/WN1Sa2lftuZyYo03UMJIlRAx1
X-Gm-Message-State: AOJu0YxMw9zQdympHK+bXKsyoAoOVvk22OSPOiUPezTlfiAPGvBY7o2A
	dqDmjp3UZhdZTWY/c2Kr0pRk4ko3sLs6KRQ52WyVxz9UNueRRUymP39HQtdb1S8=
X-Google-Smtp-Source: AGHT+IH+OvFBPw6g/HXYgXdyPb5QlnTjqK8bL4sM5FH61+RDsFFSHAWJIuNTnG8q9bW1BNhpzjrneg==
X-Received: by 2002:a4a:2446:0:b0:5a0:c926:4b90 with SMTP id v6-20020a4a2446000000b005a0c9264b90mr819011oov.6.1709176799589;
        Wed, 28 Feb 2024 19:19:59 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a4a:55d4:0:b0:5a0:3850:af20 with SMTP id e203-20020a4a55d4000000b005a03850af20ls467402oob.2.-pod-prod-03-us;
 Wed, 28 Feb 2024 19:19:58 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWrzGYBlCdYx3F4hys/VSBMDIfvbLuQlJhqD4GHuksqjkDdEMv4T1OC+oYL9qG1gpQn/WCmm3MfR/FJRxinOYQ6jcqs+9Y2QRjtPuQw7HzRlBKYoUE=
X-Received: by 2002:a05:6808:23d6:b0:3c1:b374:4941 with SMTP id bq22-20020a05680823d600b003c1b3744941mr1036454oib.28.1709176798531;
        Wed, 28 Feb 2024 19:19:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1709176798; cv=none;
        d=google.com; s=arc-20160816;
        b=T+C0dzxHEPihUf/Vlbg3QuzOWumBNIKJETXenqSZwKLhXtoq2c34WbkgkSLj7492+Y
         pVbaShv07kC7U/n4G00GpLHclwFc5w3jDu13QXMdm9Ghr9lUbbPrspajNoGsLWDp8n3M
         D4+EBjPB1PvLWMPx1RRKurnQNQgOrtJj7+92Y3ILUgPacp4WEWAc4p9VI1IQEk3vKbmd
         Iajx8JGmgxw6hvu4yh/HxIh8EB2YLpQptnU0hQ55Cvj1Kd3J4Oy3e61axHfRm2PXB92X
         gT72+zFojxol1z3M7Gc58l424u61PkEM+Qiq8YIywJaVnEP/+kr+WOPkY2qczAWrxRld
         /dmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id;
        bh=eALlSA5hxjmAd9AZlgOzuws3efxnPjM0A7sBDWdHbIY=;
        fh=hwX5t5PcD+jXX93Xi9/7Tzv6Ie72BywNC5lT+QukDD4=;
        b=AaRrQrhyaoQbV5t8G2OpZU3eJsJX83PqCOXzP0WWsR2AavpPMNKuoWlvv8FHTq6XiF
         pcmaKk9y0iPPhNDJaLDDwEWVsEhMBjwRZCVICZyE+pmmg6rnMnQR8q+DUiDqhBl+axeT
         arfWr3uQN1POP7PLOqt7oErYS1T5QROQ9PwuwHIGHtUQgmEqGrVhje/VfVlxR6cHlAX1
         jCXxwIsK6SUUAkUn0OKLHwN08QtnUV3WDDzJtykLq3yynhEmBG1F1DZQc8vRpKmpyQgh
         Pim+IM8VZ6VcIjKjjzRvrULKOxNm/2Pz4DCLH0r8ytFBD+tMEht0PHH6mXQq4qaJ1c01
         TKyA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of weitaowang-oc@zhaoxin.com designates 210.0.225.12 as permitted sender) smtp.mailfrom=WeitaoWang-oc@zhaoxin.com
Received: from mx1.zhaoxin.com (MX1.ZHAOXIN.COM. [210.0.225.12])
        by mx.google.com with ESMTPS id h6-20020a635306000000b005dc8b9af6bdsi499337pgb.420.2024.02.28.19.19.58
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Feb 2024 19:19:58 -0800 (PST)
Received-SPF: pass (google.com: domain of weitaowang-oc@zhaoxin.com designates 210.0.225.12 as permitted sender) client-ip=210.0.225.12;
X-ASG-Debug-ID: 1709176794-086e2316ed02390001-FTGftY
Received: from ZXSHMBX2.zhaoxin.com (ZXSHMBX2.zhaoxin.com [10.28.252.164]) by mx1.zhaoxin.com with ESMTP id 1NWDjwmQUgYZ1sxI (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO); Thu, 29 Feb 2024 11:19:54 +0800 (CST)
X-Barracuda-Envelope-From: WeitaoWang-oc@zhaoxin.com
X-Barracuda-RBL-Trusted-Forwarder: 10.28.252.164
Received: from zxbjmbx1.zhaoxin.com (10.29.252.163) by ZXSHMBX2.zhaoxin.com
 (10.28.252.164) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Thu, 29 Feb
 2024 11:19:54 +0800
Received: from [10.29.8.21] (10.29.8.21) by zxbjmbx1.zhaoxin.com
 (10.29.252.163) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Thu, 29 Feb
 2024 11:19:52 +0800
X-Barracuda-RBL-Trusted-Forwarder: 10.28.252.164
Message-ID: <0b0eefa5-71b6-dc08-d103-72b9aebd9237@zhaoxin.com>
X-Barracuda-RBL-Trusted-Forwarder: 10.29.8.21
Date: Thu, 29 Feb 2024 19:19:49 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: [usb-storage] Re: [PATCH v2] USB:UAS:return ENODEV when submit urbs
 fail with device not attached.
Content-Language: en-US
X-ASG-Orig-Subj: Re: [PATCH v2] USB:UAS:return ENODEV when submit urbs fail with
 device not attached.
To: Oliver Neukum <oneukum@suse.com>, <stern@rowland.harvard.edu>,
	<gregkh@linuxfoundation.org>, <linux-usb@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-scsi@vger.kernel.org>,
	<usb-storage@lists.one-eyed-alien.net>
CC: <WeitaoWang@zhaoxin.com>, <stable@vger.kernel.org>
References: <20240228111521.3864-1-WeitaoWang-oc@zhaoxin.com>
 <e8c4e8a3-bfc3-463f-afce-b9f600b588b2@suse.com>
 <07e80d55-d766-1781-ffc9-fab9ddcd33e3@zhaoxin.com>
 <49a365a7-199a-42cd-b8d3-86d72fe5bca6@suse.com>
From: "WeitaoWang-oc@zhaoxin.com" <WeitaoWang-oc@zhaoxin.com>
In-Reply-To: <49a365a7-199a-42cd-b8d3-86d72fe5bca6@suse.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Originating-IP: [10.29.8.21]
X-ClientProxiedBy: ZXSHCAS2.zhaoxin.com (10.28.252.162) To
 zxbjmbx1.zhaoxin.com (10.29.252.163)
X-Barracuda-Connect: ZXSHMBX2.zhaoxin.com[10.28.252.164]
X-Barracuda-Start-Time: 1709176794
X-Barracuda-Encrypted: ECDHE-RSA-AES128-GCM-SHA256
X-Barracuda-URL: https://10.28.252.35:4443/cgi-mod/mark.cgi
X-Virus-Scanned: by bsmtpd at zhaoxin.com
X-Barracuda-Scan-Msg-Size: 1699
X-Barracuda-BRTS-Status: 0
X-Barracuda-Bayes: INNOCENT GLOBAL 0.0000 1.0000 -2.0210
X-Barracuda-Spam-Score: 1.09
X-Barracuda-Spam-Status: No, SCORE=1.09 using global scores of TAG_LEVEL=1000.0 QUARANTINE_LEVEL=1000.0 KILL_LEVEL=9.0 tests=DATE_IN_FUTURE_06_12, DATE_IN_FUTURE_06_12_2
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.3.121467
	Rule breakdown below
	 pts rule name              description
	---- ---------------------- --------------------------------------------------
	0.01 DATE_IN_FUTURE_06_12   Date: is 6 to 12 hours after Received: date
	3.10 DATE_IN_FUTURE_06_12_2 DATE_IN_FUTURE_06_12_2
X-Original-Sender: weitaowang-oc@zhaoxin.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of weitaowang-oc@zhaoxin.com designates 210.0.225.12 as permitted
 sender) smtp.mailfrom=WeitaoWang-oc@zhaoxin.com
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

On 2024/2/28 22:47, Oliver Neukum wrote:

>> I'm not sure I fully understand what your mean.
>> Whether the above code is more reasonable? If not,could you give me some
>> suggestion? Thanks for your help!
> 
> You want to change uas_submit_urbs() to return the reason for
> errors, because -ENODEV needs to be handled differently. That
> is good.
> But why don't you just do
> 
> return err;
> 
> unconditionally? There is no point in using SCSI_MLQUEUE_DEVICE_BUSY

I got it, Thanks. New patch would like this sample:

@@ -562,9 +561,9 @@ static int uas_submit_urbs(struct scsi_cmnd *cmnd,

  	lockdep_assert_held(&devinfo->lock);
  	if (cmdinfo->state & SUBMIT_STATUS_URB) {
-		urb = uas_submit_sense_urb(cmnd, GFP_ATOMIC);
-		if (!urb)
-			return SCSI_MLQUEUE_DEVICE_BUSY;
+		err = uas_submit_sense_urb(cmnd, GFP_ATOMIC);
+		if (err)
+			return err;
  		cmdinfo->state &= ~SUBMIT_STATUS_URB;
  	}
@@ -582,7 +581,7 @@ static int uas_submit_urbs(struct scsi_cmnd *cmnd,
  		if (err) {
  			usb_unanchor_urb(cmdinfo->data_in_urb);
  			uas_log_cmd_state(cmnd, "data in submit err", err);
-			return SCSI_MLQUEUE_DEVICE_BUSY;
+			return err;
  		}

When alloc urb fail in the same function uas_submit_urbs,
whether we should replace SCSI_MLQUEUE_DEVICE_BUSY with generic
error code -ENOMEM? Such like this:

@@ -572,7 +571,7 @@ static int uas_submit_urbs(struct scsi_cmnd *cmnd,
  		cmdinfo->data_in_urb = uas_alloc_data_urb(devinfo, GFP_ATOMIC,
  							cmnd, DMA_FROM_DEVICE);
  		if (!cmdinfo->data_in_urb)
-			return SCSI_MLQUEUE_DEVICE_BUSY;
+			return -ENOMEM;
  		cmdinfo->state &= ~ALLOC_DATA_IN_URB;
  	}

Thanks and Best regards,
Weitao

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/0b0eefa5-71b6-dc08-d103-72b9aebd9237%40zhaoxin.com.
