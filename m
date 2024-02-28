Return-Path: <usb-storage+bncBCFIH5VMRQNBBGEI7WXAMGQE7UKNXZY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-il1-x146.google.com (mail-il1-x146.google.com [IPv6:2607:f8b0:4864:20::146])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E97D86B1D6
	for <lists+usb-storage@lfdr.de>; Wed, 28 Feb 2024 15:32:58 +0100 (CET)
Received: by mail-il1-x146.google.com with SMTP id e9e14a558f8ab-365b40e2616sf5899665ab.3
        for <lists+usb-storage@lfdr.de>; Wed, 28 Feb 2024 06:32:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1709130777; cv=pass;
        d=google.com; s=arc-20160816;
        b=Gv82Cs+AZZTY0BpUkv9Eys1uPZd6A61YZl0/PqJRbc4MpQOajBl66Sd5uk/s3uL7OY
         ZK2LhMenAq5Hs1gGDbrq0FEdNcmSvYfbTfP1rTgdQwpi/rOwZkzXgomRfONtV58DqAXz
         /KA2KkaJnU07Bb4rxPY34boMaSfk1b9bjxXbtQr7kkXX5Q/1Z7/SAYBDdZFNIE8YhTpU
         fVjJ4b2vyh/Gs3lF2f8Pg7qpIQCQcdtRp78u+R2llpAmg7oRf8DflLX6d2p1DjwTDxeS
         sY8OYiKtRT4gXoNeYhLt5EFqQZBrERIpI0/R82Qff5UB07uEI7F1BA8742JVGqU37Smw
         PPSA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:sender:dkim-signature;
        bh=GidV8/1pHSpIS73rpe97/y4Wt65e1VwwFRVv03vTWXQ=;
        fh=7SqY5ZF65pFmD9Vj1DTtPhT3XZpWA5pnvFSOeNOhywI=;
        b=j8qo/zTEUygZsAXuYWtaycsueVoo/sWWJUBLpheH1sqrB//YdoOHo1fWOZKXgxcZDM
         8DfS2UWqJrg+EATo1RHghmg7W1XaSsNotQM4HvpD62Km9qL2Bjg6xZEsvsj5r+u8ysp/
         z5blhAMZC1o46Nasj2Oq//2v3QPi4RJQZCLxYvyHUmGB4Y2PY5NTWTDUer8DBIQft+Kd
         OM+/nbk8LmYuuNxo+GUaoctR5+PDSQfyErYe2DVMuvNfcrjSh7vrxK5isxCFasWku9fl
         OtayyJ1n8FveQKWGfIQNne4cO5obC88EUCpXIJG6FFAK063gkQ6NJN1WtMac/5wsB/5a
         d5kg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of weitaowang-oc@zhaoxin.com designates 203.110.167.99 as permitted sender) smtp.mailfrom=WeitaoWang-oc@zhaoxin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1709130777; x=1709735577; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:in-reply-to:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=GidV8/1pHSpIS73rpe97/y4Wt65e1VwwFRVv03vTWXQ=;
        b=OUhaeRWTh3uukxNuXlTYfa8wIFS3PaG5h7NFy5cA2QQkzUoYVm33wjL8PrYetbHA5X
         zMK6GQR65IIrESVq9PC206oZPiJUo4Zp/zHmSf1f3qXFuKMEx6ug6qNrHrRvBcKBeqPq
         kyRTbCqGJTcqcINiJXav6+XoqBDmJ3xRb3EJE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709130777; x=1709735577;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GidV8/1pHSpIS73rpe97/y4Wt65e1VwwFRVv03vTWXQ=;
        b=MpwoLCOmzLjM3wl1eNz8+/CWIJoR0R1U2e3sY0dM9XhJltXaYZsHClIUSDdLHaHits
         blm+xxu8PYxnSfwrjdddraZrU+/q9j8LNf/7iyjRXfWAabLrI5wcGdihhHQgBs+KMJAr
         8/hYpWk/gsyfYdHHuXW2E1SqcmCZDdg9n5+1vDdYeyDYZvGGJmdoUxTnJrC7Y3uTvTmu
         q0bzqnvSJ3SSX4eBgnNmPZW/oNbG6VZeA7Mrn1G8Ossjxhb4RX50JABa+1kTi4Z/PfyI
         UN91U+rFYpUoggaCScM4NxBSeOHvh5o8y32aYh9hPvOTZjjvTVo4MFTGLFtnWub2RJuo
         owYA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVbKMMbNWc6QX2ERqBtl1cbNpg91k1soHSWYgjoRM4v/U78kas33gVUCT64bBLDzxl1ufBgBTOCZvFwDM18Rd+Zx7pap5gGbhkH
X-Gm-Message-State: AOJu0Yxc/ebfrXGch6Y2zgzoD6hAFaQvlLvUf6H+ra9HrMoAofNh1621
	ES1655s8xzH31t4lV/9Rp0kBGELMOaY9752CYrCdq5iy9gqpOXY+t9nvgUSq5yE=
X-Google-Smtp-Source: AGHT+IGKxHbJKm0I0a5PqL/k8cDiyyDm/ZyGBoFv44OfS87udz3b+A63vKjy4MtVDl4Izo3S9LSWNw==
X-Received: by 2002:a92:c104:0:b0:365:89a4:a7a4 with SMTP id p4-20020a92c104000000b0036589a4a7a4mr11013324ile.32.1709130776928;
        Wed, 28 Feb 2024 06:32:56 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a92:2c09:0:b0:365:a699:418 with SMTP id t9-20020a922c09000000b00365a6990418ls1526267ile.2.-pod-prod-04-us;
 Wed, 28 Feb 2024 06:32:56 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXoI1HLsDywoJ8Kkqi20FWaVRXR0om7nfRPubjkC9NqeNRbeBCJr//0QdK1t3IcFdMDcrHCiZBgJGtRf/haCD716zjHQRUjcvduofJKipMK8dvPc/w=
X-Received: by 2002:a05:6e02:dd1:b0:365:147e:f810 with SMTP id l17-20020a056e020dd100b00365147ef810mr13905168ilj.7.1709130775831;
        Wed, 28 Feb 2024 06:32:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1709130775; cv=none;
        d=google.com; s=arc-20160816;
        b=wJjAruQlk172Govu5OvdIqZMAyAWK0e2hOyU3ZjbcmXwYL6vpVUJ3rbHj2hQqB0R1q
         HwAocR042wpOZkdqQLiYes6vXM254cWnGJ11ygWrrU0+9P/6Cbuv/y20N7+mslew/U6S
         veLv4DlExAteXASQAGNBtDgRItB7LtCf8Qfstd26GRbHgWI6TUwlvEFSVa3kmk3GIkPn
         aiVPvkGxDDA1fPzemfa6C3ueJeLSgLWt/R/2fW5quoGymf9atKMKv6S+5LPVJGv3GGxk
         0NqDlyiqe1HhsaM8Gt5QiUDmQCiNla0GgmDM2mKrrfER+RfHaeZykfm/6orlQh4jukaF
         ioPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id;
        bh=s7hSgssM8O5XI5NlxQWfFBY9vCS1WtlMEDv6EiV7ayI=;
        fh=hwX5t5PcD+jXX93Xi9/7Tzv6Ie72BywNC5lT+QukDD4=;
        b=MhQ5qtw6kwpB1xhZ8t1rPRy1PWpXio86N8NtKh43CnCYWV6XrWFoeRqkvyQH1KBvrr
         HDgAVCmuKS+TEpIqGlO5NwZy4QOp4RwbvlgcC3bGfyGab3crbluHMXXzJYSJaiOdK75V
         j+q1o7KYZK9eQaU9CkBQD2SD2IfMKoFaqgO8IdARSGBX32VInV9oW5oxagQY9w1lmr38
         P69EnB4Wx93MF23lAMsskib2KiyO1SRMo71VLoy/2mqlgLPHJfHBJ45kozAyaEylJGxQ
         09xYkD02jyfYv6IFgJufmHGLeVCIq94ukQonmy/4Hlzbuq6Eouis4OYgGWzzTm+sIcL1
         O+Sw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of weitaowang-oc@zhaoxin.com designates 203.110.167.99 as permitted sender) smtp.mailfrom=WeitaoWang-oc@zhaoxin.com
Received: from mx2.zhaoxin.com (mx2.zhaoxin.com. [203.110.167.99])
        by mx.google.com with ESMTPS id c9-20020a056a000ac900b006e5076ae4fesi6711836pfl.369.2024.02.28.06.32.55
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Feb 2024 06:32:55 -0800 (PST)
Received-SPF: pass (google.com: domain of weitaowang-oc@zhaoxin.com designates 203.110.167.99 as permitted sender) client-ip=203.110.167.99;
X-ASG-Debug-ID: 1709130771-1eb14e0c7e4c120001-FTGftY
Received: from ZXSHMBX2.zhaoxin.com (ZXSHMBX2.zhaoxin.com [10.28.252.164]) by mx2.zhaoxin.com with ESMTP id wblIV0teK9jWjlKG (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO); Wed, 28 Feb 2024 22:32:51 +0800 (CST)
X-Barracuda-Envelope-From: WeitaoWang-oc@zhaoxin.com
X-Barracuda-RBL-Trusted-Forwarder: 10.28.252.164
Received: from zxbjmbx1.zhaoxin.com (10.29.252.163) by ZXSHMBX2.zhaoxin.com
 (10.28.252.164) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Wed, 28 Feb
 2024 22:32:51 +0800
Received: from [10.29.8.21] (10.29.8.21) by zxbjmbx1.zhaoxin.com
 (10.29.252.163) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Wed, 28 Feb
 2024 22:32:50 +0800
X-Barracuda-RBL-Trusted-Forwarder: 10.28.252.164
Message-ID: <07e80d55-d766-1781-ffc9-fab9ddcd33e3@zhaoxin.com>
X-Barracuda-RBL-Trusted-Forwarder: 10.29.8.21
Date: Thu, 29 Feb 2024 06:32:48 +0800
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
From: "WeitaoWang-oc@zhaoxin.com" <WeitaoWang-oc@zhaoxin.com>
In-Reply-To: <e8c4e8a3-bfc3-463f-afce-b9f600b588b2@suse.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Originating-IP: [10.29.8.21]
X-ClientProxiedBy: ZXSHCAS2.zhaoxin.com (10.28.252.162) To
 zxbjmbx1.zhaoxin.com (10.29.252.163)
X-Barracuda-Connect: ZXSHMBX2.zhaoxin.com[10.28.252.164]
X-Barracuda-Start-Time: 1709130771
X-Barracuda-Encrypted: ECDHE-RSA-AES128-GCM-SHA256
X-Barracuda-URL: https://10.28.252.36:4443/cgi-mod/mark.cgi
X-Virus-Scanned: by bsmtpd at zhaoxin.com
X-Barracuda-Scan-Msg-Size: 2490
X-Barracuda-BRTS-Status: 0
X-Barracuda-Bayes: INNOCENT GLOBAL 0.0000 1.0000 -2.0210
X-Barracuda-Spam-Score: 1.09
X-Barracuda-Spam-Status: No, SCORE=1.09 using global scores of TAG_LEVEL=1000.0 QUARANTINE_LEVEL=1000.0 KILL_LEVEL=9.0 tests=DATE_IN_FUTURE_06_12, DATE_IN_FUTURE_06_12_2
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.3.121446
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

On 2024/2/28 16:00, Oliver Neukum wrote:
>=20
>> @@ -562,9 +561,9 @@ static int uas_submit_urbs(struct scsi_cmnd *cmnd,
>>
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 lockdep_assert_held(&devinfo->lock);
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (cmdinfo->state & SUBMIT_STATUS_URB) {
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 urb =3D uas_submit_sense_urb(cmnd, GFP_ATOMIC);
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 if (!urb)
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return SCSI_MLQUEUE_DEV=
ICE_BUSY;
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 err =3D uas_submit_sense_urb(cmnd, GFP_ATOMIC);
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 if (err)
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return (err =3D=3D -ENO=
DEV) ? -ENODEV : SCSI_MLQUEUE_DEVICE_BUSY;
>=20
> Either we ought to use SCSI error codes or generic error codes.
> There is no need to translate all but one error condition here.
>=20

  static int uas_submit_urbs(struct scsi_cmnd *cmnd,
@@ -562,10 +561,13 @@ static int uas_submit_urbs(struct scsi_cmnd *cmnd,

  	lockdep_assert_held(&devinfo->lock);
  	if (cmdinfo->state & SUBMIT_STATUS_URB) {
-		urb =3D uas_submit_sense_urb(cmnd, GFP_ATOMIC);
-		if (!urb)
+		err =3D uas_submit_sense_urb(cmnd, GFP_ATOMIC);
+		if (!err)
+			cmdinfo->state &=3D ~SUBMIT_STATUS_URB;
+		else if (err =3D=3D -ENODEV)
+			return -ENODEV;
+		else
  			return SCSI_MLQUEUE_DEVICE_BUSY;
-		cmdinfo->state &=3D ~SUBMIT_STATUS_URB;
  	}

  	if (cmdinfo->state & ALLOC_DATA_IN_URB) {
@@ -582,6 +584,8 @@ static int uas_submit_urbs(struct scsi_cmnd *cmnd,
  		if (err) {
  			usb_unanchor_urb(cmdinfo->data_in_urb);
  			uas_log_cmd_state(cmnd, "data in submit err", err);
+			if (err =3D=3D -ENODEV)
+				return -ENODEV;
  			return SCSI_MLQUEUE_DEVICE_BUSY;
  		}
  		cmdinfo->state &=3D ~SUBMIT_DATA_IN_URB;
@@ -602,6 +606,8 @@ static int uas_submit_urbs(struct scsi_cmnd *cmnd,
  		if (err) {
  			usb_unanchor_urb(cmdinfo->data_out_urb);
  			uas_log_cmd_state(cmnd, "data out submit err", err);
+			if (err =3D=3D -ENODEV)
+				return -ENODEV;
  			return SCSI_MLQUEUE_DEVICE_BUSY;
  		}
  		cmdinfo->state &=3D ~SUBMIT_DATA_OUT_URB;
@@ -621,6 +627,8 @@ static int uas_submit_urbs(struct scsi_cmnd *cmnd,
  		if (err) {
  			usb_unanchor_urb(cmdinfo->cmd_urb);
  			uas_log_cmd_state(cmnd, "cmd submit err", err);
+			if (err =3D=3D -ENODEV)
+				return -ENODEV;
  			return SCSI_MLQUEUE_DEVICE_BUSY;
  		}

I'm not sure I fully understand what your mean.
Whether the above code is more reasonable? If not,could you give me some
suggestion? Thanks for your help!

Weitao


--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/07e80d55-d766-1781-ffc9-fab9ddcd33e3=
%40zhaoxin.com.
