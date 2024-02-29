Return-Path: <usb-storage+bncBCFIH5VMRQNBBEUGQGXQMGQE6Y72XIY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ot1-x347.google.com (mail-ot1-x347.google.com [IPv6:2607:f8b0:4864:20::347])
	by mail.lfdr.de (Postfix) with ESMTPS id DF10086C3D7
	for <lists+usb-storage@lfdr.de>; Thu, 29 Feb 2024 09:40:52 +0100 (CET)
Received: by mail-ot1-x347.google.com with SMTP id 46e09a7af769-6e493581bb1sf425072a34.3
        for <lists+usb-storage@lfdr.de>; Thu, 29 Feb 2024 00:40:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1709196051; cv=pass;
        d=google.com; s=arc-20160816;
        b=kn7yt0JhXZ6dd2AeUqGycfbGeEhOduac4TV+g1mLIXruwd2OEOegoGylBJijxc5oZ1
         tXbUjBzlTBa9j5VvGNLTB3xDahJUd0YWLnkNa91Hze/Yk0o3pmP1pP9cbqUM2uF3Zc0U
         NVcHlxzlJJLHW1oiZDPxFyzc/BBDfGFv7Kg0V7J4AvAWtfNNa51ChecGytpefawOWR23
         3gQG7uNds2WmIrlFUytvm0jjfUvxX3VGmac4Vxj7gSM6E6tauqzvSN2dSOSBMy1uhkgh
         R6yW9QnMzdrCPvy9yi4+cwKRp57mHYPoZhOav2PGfdYTcNS0yFC0lYUPtG5vAQku2eHV
         GPuQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:sender:dkim-signature;
        bh=G14tiVfSaClhoZFt6Fm2Q9lYCuGH6PNJVq++4iCt4O4=;
        fh=+bTAxPlFuGDvpN6fSLQq7h29qWjMWvmY/EsYvNDNTos=;
        b=kKZPLNMVVQw6Z0SbRgn0x1P84bAsN7y1Hn69+94VzTwi3qBM0XD1xfgWcoCE2vwHH8
         snqi/fkEakAk4w2axn5ax1AR/5n4MAt7dKV4ggKD4Ckm8H5Eelzv1nB7NY2ld6CHHBin
         mVqUwetIy1y3c8ruIchJgBy7nBknnWQbshPlEuYw8rFYhUKg4onGk2LyeSdgU+nyzHJF
         Covr3z+um52FdcmirYLsI7n+mxIUQ7EjQZcna6GhA+LVP7OpBTza+D57Xcmnh06vLlZJ
         NyLkb8P5WPJd1ZHFcY+Pw4616yhJPIlQzIJ8T6smDe6EQ9RxfThq5Cp/UuIYYZnHo5MY
         LACg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of weitaowang-oc@zhaoxin.com designates 203.110.167.99 as permitted sender) smtp.mailfrom=WeitaoWang-oc@zhaoxin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1709196051; x=1709800851; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:in-reply-to:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=G14tiVfSaClhoZFt6Fm2Q9lYCuGH6PNJVq++4iCt4O4=;
        b=d7r9dhsfIgDmI5uSUvqHYC75vWvs3s3fxeH+CL9eWnCodP778eKjj/hEbR6w8QOc8e
         MNzcG8/ZgLsZVCMaR+8fzobQRmcVXwyDoQXJr5+rfA3XrSqrMar1h1q5DBui9KiQ6DCh
         sspWv/T7WK2NdFbLhwhpYFhzKXCC839sIBMqA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709196051; x=1709800851;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=G14tiVfSaClhoZFt6Fm2Q9lYCuGH6PNJVq++4iCt4O4=;
        b=TpnMBlOOhYos65Jw9v7KS+SnRLmVQkXOyK1WfjNyuERis7YpkDP8OAn20n+YsAXtAh
         5+jHi9lertNaGvOFBEgCZy3AhpA7g89OICV6zbxswO3s4RXNYfgPpb35Nuz0rJMhvzlB
         N84SRt9/p/y0vMmOnzIIJKAcCcr0k2kjS3sYRZxomcurrjq1n6zPb5sh+VgtwFjOJQsk
         nsJcsnAdUbn0oJf53Htt6KLm/Tcl0E2brbWMdjl48r88VmKQ9jZ434Hm+1ZcNNdze2r+
         In57d8ZJaLE+1cyglkyB+hSjCT7rjj+XOm0Zk4DWoCHtxoGSrJLO+7LVVUe/LpXYosFp
         FuZg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVyxa5uI5VNNfNsK/aDsWR4fvtgwZfzPkN8ysG70vlATRKGzNzYwQV16XQAi3uABF8fxnbpvqECq16JgBj3/9qe3+X8IHWRnh6a
X-Gm-Message-State: AOJu0Ywnnh/ZxVGmH1g1nriNZnm2DFqxVae+Ifz1Pkau+RkA2Pvjuo6C
	MTaLNfy79F8RylP9C2gYYWHT7P8mEt/cuykWV8nL/rDYL/9nXUXLEZ8vP6IdNqY=
X-Google-Smtp-Source: AGHT+IHaAyiIryoxPEsXK5sUM8qV24I0zubdU6Nm9kWGguva1IUwQ5ZhMfTAjxx2c1DiFRGFIYiz2A==
X-Received: by 2002:a05:6830:2685:b0:6e4:b38d:82b6 with SMTP id l5-20020a056830268500b006e4b38d82b6mr1926897otu.15.1709196051313;
        Thu, 29 Feb 2024 00:40:51 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a4a:1ac6:0:b0:5a0:2a71:8d8d with SMTP id 189-20020a4a1ac6000000b005a02a718d8dls691935oof.1.-pod-prod-02-us;
 Thu, 29 Feb 2024 00:40:50 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXZ3n/F2rMJhDk52Tl6IWzpJrNgL6IyAFKNI/GNT7Z9DUsePvAR4LySZYk7yUcpDs0gZLXwNJbg42uJkWpBN/6PRA2GkYWGX1enRd2a4KCJ07NSM2Y=
X-Received: by 2002:a05:6830:6508:b0:6e2:d8f9:26b1 with SMTP id cm8-20020a056830650800b006e2d8f926b1mr1949550otb.26.1709196050260;
        Thu, 29 Feb 2024 00:40:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1709196050; cv=none;
        d=google.com; s=arc-20160816;
        b=Dg1gUdcx8LxASANXso5axvY1mb0GFAk/Wg6z3TPX+BqunmH5c81eJ9SFDHJZOCQTTm
         V7fTzCmwf4grH8kzou9Dvoaxm65HYPepkYvlbHLKWBoJr86QmtOHhcGuvEmOCOHRT3eN
         bjssaVSOk/MPN7drfE3yOc7WqTfqvZC/ZSeijHQw+NX04jXUasmU0GYQklvEu+5ulfI4
         AYDqFoVZN5X8T6IltiyzFL1cZmBuP8+iSYgY5TNpUxsaVsxJxHKJ9Qy5Q+bTP3RIUGJW
         b8MAE2lkM72jR2LZfMr05UZp3ei4Y3L3xhLwClaTx3ZJGWZ2Q8zG/NSYC39xmR9AZIoW
         WiMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id;
        bh=6Dw33TZ4dU2dTZQqL4tRQtXMuzIhyavP7y1gs87EtVI=;
        fh=hwX5t5PcD+jXX93Xi9/7Tzv6Ie72BywNC5lT+QukDD4=;
        b=068nePYmC1ptiiZ/WEOO8Yj0FaEVHqaUDPgn8XM5Alu7Qw21p5PEEOXN/R+2OlPPTN
         oLtXP/9OcHOEYomVXoNaWfCsVUD1IqndPrpKHRTU7D3auQ5ky+sITGT0iYtkMAzEJov5
         4vnEpeAWOLzj+h+t5ROxA37tQDswpzweDodf14qAX9t29NzrY8HeazXhZnZY7YF+dgw0
         RuY3thAP525dEnHhN1UvlePS4LopCr5k4ZAyLKAQBKuq0AL1evDLPLnGYGogtbfB4n2G
         5EOCpxA79BIQGbIcbB/hxqxjbtjXvifLPsOfymDe820CkZnTEJA4/fhhUJQ5eplEpcz8
         icpg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of weitaowang-oc@zhaoxin.com designates 203.110.167.99 as permitted sender) smtp.mailfrom=WeitaoWang-oc@zhaoxin.com
Received: from mx2.zhaoxin.com (mx2.zhaoxin.com. [203.110.167.99])
        by mx.google.com with ESMTPS id v28-20020a63481c000000b005dca5caed4bsi929881pga.516.2024.02.29.00.40.49
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Feb 2024 00:40:49 -0800 (PST)
Received-SPF: pass (google.com: domain of weitaowang-oc@zhaoxin.com designates 203.110.167.99 as permitted sender) client-ip=203.110.167.99;
X-ASG-Debug-ID: 1709196046-1eb14e0c7c4cd80001-FTGftY
Received: from ZXSHMBX1.zhaoxin.com (ZXSHMBX1.zhaoxin.com [10.28.252.163]) by mx2.zhaoxin.com with ESMTP id IFq8M5OlV5QskFli (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO); Thu, 29 Feb 2024 16:40:46 +0800 (CST)
X-Barracuda-Envelope-From: WeitaoWang-oc@zhaoxin.com
X-Barracuda-RBL-Trusted-Forwarder: 10.28.252.163
Received: from zxbjmbx1.zhaoxin.com (10.29.252.163) by ZXSHMBX1.zhaoxin.com
 (10.28.252.163) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Thu, 29 Feb
 2024 16:40:46 +0800
Received: from [10.29.8.21] (10.29.8.21) by zxbjmbx1.zhaoxin.com
 (10.29.252.163) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Thu, 29 Feb
 2024 16:40:44 +0800
X-Barracuda-RBL-Trusted-Forwarder: 10.28.252.163
Message-ID: <bb269ab0-128b-1988-acf1-8df05f08cf86@zhaoxin.com>
X-Barracuda-RBL-Trusted-Forwarder: 10.29.8.21
Date: Fri, 1 Mar 2024 00:40:43 +0800
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
 <0b0eefa5-71b6-dc08-d103-72b9aebd9237@zhaoxin.com>
 <9263b77e-9ebe-4987-bf7f-8f9fafcf06b3@suse.com>
From: "WeitaoWang-oc@zhaoxin.com" <WeitaoWang-oc@zhaoxin.com>
In-Reply-To: <9263b77e-9ebe-4987-bf7f-8f9fafcf06b3@suse.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Originating-IP: [10.29.8.21]
X-ClientProxiedBy: ZXSHCAS2.zhaoxin.com (10.28.252.162) To
 zxbjmbx1.zhaoxin.com (10.29.252.163)
X-Barracuda-Connect: ZXSHMBX1.zhaoxin.com[10.28.252.163]
X-Barracuda-Start-Time: 1709196046
X-Barracuda-Encrypted: ECDHE-RSA-AES128-GCM-SHA256
X-Barracuda-URL: https://10.28.252.36:4443/cgi-mod/mark.cgi
X-Virus-Scanned: by bsmtpd at zhaoxin.com
X-Barracuda-Scan-Msg-Size: 4700
X-Barracuda-BRTS-Status: 0
X-Barracuda-Bayes: INNOCENT GLOBAL 0.0000 1.0000 -2.0210
X-Barracuda-Spam-Score: 1.09
X-Barracuda-Spam-Status: No, SCORE=1.09 using global scores of TAG_LEVEL=1000.0 QUARANTINE_LEVEL=1000.0 KILL_LEVEL=9.0 tests=DATE_IN_FUTURE_06_12, DATE_IN_FUTURE_06_12_2
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.3.121476
	Rule breakdown below
	 pts rule name              description
	---- ---------------------- --------------------------------------------------
	0.01 DATE_IN_FUTURE_06_12   Date: is 6 to 12 hours after Received: date
	3.10 DATE_IN_FUTURE_06_12_2 DATE_IN_FUTURE_06_12_2
X-Original-Sender: weitaowang-oc@zhaoxin.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of weitaowang-oc@zhaoxin.com designates 203.110.167.99 as permitted
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

On 2024/2/29 16:08, Oliver Neukum wrote:
>=20

> On 29.02.24 12:19, WeitaoWang-oc@zhaoxin.com wrote:
>=20
>> When alloc urb fail in the same function uas_submit_urbs,
>> whether we should replace SCSI_MLQUEUE_DEVICE_BUSY with generic
>> error code -ENOMEM? Such like this:
>>
>> @@ -572,7 +571,7 @@ static int uas_submit_urbs(struct scsi_cmnd *cmnd,
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cmdinfo->data_in_=
urb =3D uas_alloc_data_urb(devinfo, GFP_ATOMIC,
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 cmnd, DMA_FROM_DEVICE);
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (!cmdinfo->dat=
a_in_urb)
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 retu=
rn SCSI_MLQUEUE_DEVICE_BUSY;
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 retu=
rn -ENOMEM;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cmdinfo->state &=
=3D ~ALLOC_DATA_IN_URB;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 }
>=20
> Hi,
>=20
> yes, and then you translate in one central place for the SCSI layer
> into DID_ERROR or DID_NO_CONNECT.
>=20

OK, I'll submit a new version after you help to review the following patch.


diff --git a/drivers/usb/storage/uas.c b/drivers/usb/storage/uas.c
index 9707f53cfda9..689396777b6f 100644
--- a/drivers/usb/storage/uas.c
+++ b/drivers/usb/storage/uas.c
@@ -533,7 +533,7 @@ static struct urb *uas_alloc_cmd_urb(struct uas_dev_inf=
o *devinfo,=20
gfp_t gfp,
   * daft to me.
   */

-static struct urb *uas_submit_sense_urb(struct scsi_cmnd *cmnd, gfp_t gfp)
+static int uas_submit_sense_urb(struct scsi_cmnd *cmnd, gfp_t gfp)
  {
  	struct uas_dev_info *devinfo =3D cmnd->device->hostdata;
  	struct urb *urb;
@@ -541,16 +541,15 @@ static struct urb *uas_submit_sense_urb(struct scsi_c=
mnd *cmnd,=20
gfp_t gfp)

  	urb =3D uas_alloc_sense_urb(devinfo, gfp, cmnd);
  	if (!urb)
-		return NULL;
+		return -ENOMEM;
  	usb_anchor_urb(urb, &devinfo->sense_urbs);
  	err =3D usb_submit_urb(urb, gfp);
  	if (err) {
  		usb_unanchor_urb(urb);
  		uas_log_cmd_state(cmnd, "sense submit err", err);
  		usb_free_urb(urb);
-		return NULL;
  	}
-	return urb;
+	return err;
  }

  static int uas_submit_urbs(struct scsi_cmnd *cmnd,
@@ -562,9 +561,9 @@ static int uas_submit_urbs(struct scsi_cmnd *cmnd,

  	lockdep_assert_held(&devinfo->lock);
  	if (cmdinfo->state & SUBMIT_STATUS_URB) {
-		urb =3D uas_submit_sense_urb(cmnd, GFP_ATOMIC);
-		if (!urb)
-			return SCSI_MLQUEUE_DEVICE_BUSY;
+		err =3D uas_submit_sense_urb(cmnd, GFP_ATOMIC);
+		if (err)
+			return err;
  		cmdinfo->state &=3D ~SUBMIT_STATUS_URB;
  	}

@@ -572,7 +571,7 @@ static int uas_submit_urbs(struct scsi_cmnd *cmnd,
  		cmdinfo->data_in_urb =3D uas_alloc_data_urb(devinfo, GFP_ATOMIC,
  							cmnd, DMA_FROM_DEVICE);
  		if (!cmdinfo->data_in_urb)
-			return SCSI_MLQUEUE_DEVICE_BUSY;
+			return -ENOMEM;
  		cmdinfo->state &=3D ~ALLOC_DATA_IN_URB;
  	}

@@ -582,7 +581,7 @@ static int uas_submit_urbs(struct scsi_cmnd *cmnd,
  		if (err) {
  			usb_unanchor_urb(cmdinfo->data_in_urb);
  			uas_log_cmd_state(cmnd, "data in submit err", err);
-			return SCSI_MLQUEUE_DEVICE_BUSY;
+			return err;
  		}
  		cmdinfo->state &=3D ~SUBMIT_DATA_IN_URB;
  		cmdinfo->state |=3D DATA_IN_URB_INFLIGHT;
@@ -592,7 +591,7 @@ static int uas_submit_urbs(struct scsi_cmnd *cmnd,
  		cmdinfo->data_out_urb =3D uas_alloc_data_urb(devinfo, GFP_ATOMIC,
  							cmnd, DMA_TO_DEVICE);
  		if (!cmdinfo->data_out_urb)
-			return SCSI_MLQUEUE_DEVICE_BUSY;
+			return -ENOMEM;
  		cmdinfo->state &=3D ~ALLOC_DATA_OUT_URB;
  	}

@@ -602,7 +601,7 @@ static int uas_submit_urbs(struct scsi_cmnd *cmnd,
  		if (err) {
  			usb_unanchor_urb(cmdinfo->data_out_urb);
  			uas_log_cmd_state(cmnd, "data out submit err", err);
-			return SCSI_MLQUEUE_DEVICE_BUSY;
+			return err;
  		}
  		cmdinfo->state &=3D ~SUBMIT_DATA_OUT_URB;
  		cmdinfo->state |=3D DATA_OUT_URB_INFLIGHT;
@@ -611,7 +610,7 @@ static int uas_submit_urbs(struct scsi_cmnd *cmnd,
  	if (cmdinfo->state & ALLOC_CMD_URB) {
  		cmdinfo->cmd_urb =3D uas_alloc_cmd_urb(devinfo, GFP_ATOMIC, cmnd);
  		if (!cmdinfo->cmd_urb)
-			return SCSI_MLQUEUE_DEVICE_BUSY;
+			return -ENOMEM;
  		cmdinfo->state &=3D ~ALLOC_CMD_URB;
  	}

@@ -621,7 +620,7 @@ static int uas_submit_urbs(struct scsi_cmnd *cmnd,
  		if (err) {
  			usb_unanchor_urb(cmdinfo->cmd_urb);
  			uas_log_cmd_state(cmnd, "cmd submit err", err);
-			return SCSI_MLQUEUE_DEVICE_BUSY;
+			return err;
  		}
  		cmdinfo->cmd_urb =3D NULL;
  		cmdinfo->state &=3D ~SUBMIT_CMD_URB;
@@ -698,7 +697,7 @@ static int uas_queuecommand_lck(struct scsi_cmnd *cmnd)
  	 * of queueing, no matter how fatal the error
  	 */
  	if (err =3D=3D -ENODEV) {
-		set_host_byte(cmnd, DID_ERROR);
+		set_host_byte(cmnd, DID_NO_CONNECT);
  		scsi_done(cmnd);
  		goto zombie;
  	}

Thanks and best regards,
weitao

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/bb269ab0-128b-1988-acf1-8df05f08cf86=
%40zhaoxin.com.
