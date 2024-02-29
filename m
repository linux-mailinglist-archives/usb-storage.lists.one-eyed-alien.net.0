Return-Path: <usb-storage+bncBCTPRFE7TUKRB35RQGXQMGQEIUB4YJQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-lf1-x148.google.com (mail-lf1-x148.google.com [IPv6:2a00:1450:4864:20::148])
	by mail.lfdr.de (Postfix) with ESMTPS id 0703A86C68F
	for <lists+usb-storage@lfdr.de>; Thu, 29 Feb 2024 11:14:09 +0100 (CET)
Received: by mail-lf1-x148.google.com with SMTP id 2adb3069b0e04-5113b77ff80sf457106e87.2
        for <lists+usb-storage@lfdr.de>; Thu, 29 Feb 2024 02:14:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1709201648; cv=pass;
        d=google.com; s=arc-20160816;
        b=x5YUAJsA+nnNPiGNXtEt7LuOjctosuzbV5FKbbcIopiLobJ3eLWSIC4uL7xvKa/4LQ
         /TnPdcYT1j3XFyGffqqzxtnlxA180e75raE6sbnqY49w4a+zse2mPPZk5ow9XBHX+La3
         N7dad45uh2GlL5hNQUo38GXcY/+izAUrztI0O+DF0VpXSN1s4AflkuL9tHf2dtCbzlqy
         fT1a3rQsqCmtVsnNV0C1eTCE1CzIrAT+RtD0nrXyArDZZvBbnG7rRUsbT5zihtN65vkR
         Nd4X4bLEe5unSmKxsYI4TDfR5O+fXjTN0/tVe1kadActBnnNe0HbKR121f3v9d3Fy/MI
         +zhw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:dkim-signature;
        bh=9xty6aTEBRdA8vOoAxirf3QoRVPCEdoXRUSwbELsT8E=;
        fh=JhRt+rwGX4nIuiH1XXX5Pjrf8zod049dcmlbG3DIgCc=;
        b=BR5Ym5yr2iivf44Z0BCml8SgfRxGiLxqg5bltR927TUe/zVa1tPtFZDfi1EuSX2EDf
         UksO0NEFOegpoM1KWw8sQ580cK5CLyE1vW5VBzoWiwud1iJfm4WBZZJ1OS1cgyWzPE0v
         +nTguokLlt8n/510MrpNP7oLhvefcQgsPv02N8wVyU26qYm9soAYYEB7emTyW8ODCZU6
         XajOkvIj/PrAuy7S5ieWfKJ1QxkycmzUWx9XIenazKyXS+zf58qB1lsVsWcrlC6CJaD1
         ZMTQ7WheE8mfcbzm/XlTfPIe+EWwWKfBugIcoNkZdZP8YewPCHAbOGsYPW59RnWsMgCJ
         Br+A==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@suse.com header.s=google header.b=Ime0YvLz;
       spf=pass (google.com: domain of oneukum@suse.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=oneukum@suse.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1709201648; x=1709806448; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9xty6aTEBRdA8vOoAxirf3QoRVPCEdoXRUSwbELsT8E=;
        b=J6f+8opcqfknDk+svdltCXMimzW1mO8MMRLjkzlW7i/2B47zLU4f7qXtIbhhlROiN7
         hYY0AOuj96oRuJAXigxCSXRA7pH6+Qqx+VHqd2OjQBZQe+y9Wot4uufu/UwHxeaBd9om
         6xFCO0aJsz2sNHrdeD4I/P9KuQoHkTIXkK9Uw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709201648; x=1709806448;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-beenthere:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=9xty6aTEBRdA8vOoAxirf3QoRVPCEdoXRUSwbELsT8E=;
        b=eS5VQhhOP21eWRT8Nt4AhqiBERyYHM9oJ9CuGO8bQyDl5vTKDrkBlqBDqligg6gETP
         dZSd1pwIGKzuxBiq71i8kcFXga04jfindIwICaUG1VazEESEUUMVE95nEK1nIuooXNTs
         BPI9LCCF3/cMKh6NxeSVRfxZQ3SFVjL7XFlIquZ0otbzpW4P1ip1ABZ7nYDeghIP+xOk
         NLDiuHfCnTUEPw7BkwZP6yOnIFyH9MWz+NqPnlf+vmxpSPRu9QLtVj23VNIjzg7cN2Pc
         c8LUD2inacnxPRPZj1X4pVBLcV8D1MyI7i6vi7Wb3SASQn6Rp3UBSYMnd2oviu14UOVB
         Di2Q==
X-Forwarded-Encrypted: i=2; AJvYcCW5MA/tJoUW7QA9gtGIyIX8cqmsFINOvvDwdhI7a8ThYeTTY432b+7EOGkYTxsGWXNw3XDqT2eWs6mTHSJHO4Y4USPDJe7kY+Pu
X-Gm-Message-State: AOJu0Yx3LgEiGJDqK2od7BznWYUKcOeSrAhNJwT1QR2BOMaesXmbp+sp
	ySBGxH0dxE8kKEFe2CjCSAfKr+6HoAGghyO+5USkkGFJLYM7wWEjmXDr7rqsFmw=
X-Google-Smtp-Source: AGHT+IHcqrLz13oZKshxVh2emTTIPyJurZanbvWHYM0RBTGLeQOIBNqUrLyteJaDR7glrFpgakKv0w==
X-Received: by 2002:a05:6512:406:b0:512:a987:13ee with SMTP id u6-20020a056512040600b00512a98713eemr1096150lfk.50.1709201648227;
        Thu, 29 Feb 2024 02:14:08 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:600c:1d8b:b0:412:c1d5:1e9f with SMTP id
 p11-20020a05600c1d8b00b00412c1d51e9fls29983wms.0.-pod-prod-03-eu; Thu, 29 Feb
 2024 02:14:06 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXbIDlJx6LH34ttZT1Dz9P6RvSpF0EGi1RuwwKujE9QGZTDPbRl2nT8eBB+ftZjIJ3Uh7IEHLdM2f4EiBrwKjF1mUyoor8kqnMvWgRc2YfKlTDQKJk=
X-Received: by 2002:a05:600c:4fc6:b0:412:c1e0:e95c with SMTP id o6-20020a05600c4fc600b00412c1e0e95cmr215655wmq.12.1709201646389;
        Thu, 29 Feb 2024 02:14:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1709201646; cv=none;
        d=google.com; s=arc-20160816;
        b=cmJzEdB/s5h1IhvCugnwMGYFD3NTgL1H3oAyZb1MaJvQuLJwrL3F/1a7UZSo54uLkD
         maeCm2Ik/YifMsnFoR+zR/ylSCDER1RpHAD7jiiQQm118VR9oxCHNO2gMO8GHCPuElBR
         h11+OKLYixR0z3RdXGuzyKp8aDlZ38+cW7B5pWQpvy9rYXGpgfK0KG9kqSsGPiQpE32g
         bh8dI+QJqldJU0XP/vxOTVYqVwJEGVSPkc+qdkJ3qcI1JKgXL0I6ijfmPw4kt4FeLQ0q
         lnpik8h4PxcOKXMusDfR1vNnhbYZcRJGuZYuumxwuYbxd3z0A1XS0EBrngHHP82IJCd5
         6Fjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=jnnbn314m5C/930ao7THUc7euOiuIRor/2uYI5CotuI=;
        fh=FsW6kpxrKBm3nCaGYMji7y1cLjgYlCcWSqWVzCuNiEI=;
        b=inoNEm3o3IuSHooHhKHo7m9NXV//nq7zD0909Ve/v0NXFBRG7iHvpVlU8EsE6qWKAK
         /6S7lA1o5yNzvyY7aUP2abUWjDRjwszR9gwAzraKvtg669kAaRCGiUG/NGo9vkKMAp3r
         8yoXaiSkwh/A8zLo90ntp85lNxrSYSVwauJxR9IGdHZo2cbfTXIEk3kT9VPDF9Srs/wM
         rYiOVczmAu8HznrjVXN8TDmPyJHTCC3hRkU9bInX9WAqg5sELpnaNL+shLFmmBZ4sQOn
         tjIczrx3Xt6X8n7RBBXi0TI4ZejFDgj5ZGLg2GU+OFE7ThaA3oQaXPQfn7GMFmzZgufW
         6CyQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@suse.com header.s=google header.b=Ime0YvLz;
       spf=pass (google.com: domain of oneukum@suse.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=oneukum@suse.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=suse.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id v3-20020a05600c428300b0041295ce64a5sor261758wmc.4.2024.02.29.02.14.06
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Thu, 29 Feb 2024 02:14:06 -0800 (PST)
Received-SPF: pass (google.com: domain of oneukum@suse.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCUHVO3VQ8i8MU2O06iy4zVn1Vy2DWX9n1QypBOaqqZN3S8/+CyWHbac44XnIvaBfCzqz24PJoeb/4YoXchyvT5z3ymx3GpB0uwMvvRWOAPAAmyyTb8=
X-Received: by 2002:a05:600c:a001:b0:412:bd5b:efbd with SMTP id jg1-20020a05600ca00100b00412bd5befbdmr1040220wmb.1.1709201645978;
        Thu, 29 Feb 2024 02:14:05 -0800 (PST)
Received: from ?IPV6:2001:a61:1366:6801:d8:8490:cf1a:3274? ([2001:a61:1366:6801:d8:8490:cf1a:3274])
        by smtp.gmail.com with ESMTPSA id n33-20020a05600c3ba100b00412bca4cdf9sm1504987wms.36.2024.02.29.02.14.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Feb 2024 02:14:05 -0800 (PST)
Message-ID: <62891b42-7662-463a-885b-fba1d29bafdd@suse.com>
Date: Thu, 29 Feb 2024 11:14:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH v2] USB:UAS:return ENODEV when submit urbs
 fail with device not attached.
Content-Language: en-US
To: "WeitaoWang-oc@zhaoxin.com" <WeitaoWang-oc@zhaoxin.com>,
 Oliver Neukum <oneukum@suse.com>, stern@rowland.harvard.edu,
 gregkh@linuxfoundation.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net
Cc: WeitaoWang@zhaoxin.com, stable@vger.kernel.org
References: <20240228111521.3864-1-WeitaoWang-oc@zhaoxin.com>
 <e8c4e8a3-bfc3-463f-afce-b9f600b588b2@suse.com>
 <07e80d55-d766-1781-ffc9-fab9ddcd33e3@zhaoxin.com>
 <49a365a7-199a-42cd-b8d3-86d72fe5bca6@suse.com>
 <0b0eefa5-71b6-dc08-d103-72b9aebd9237@zhaoxin.com>
 <9263b77e-9ebe-4987-bf7f-8f9fafcf06b3@suse.com>
 <bb269ab0-128b-1988-acf1-8df05f08cf86@zhaoxin.com>
From: "'Oliver Neukum' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
In-Reply-To: <bb269ab0-128b-1988-acf1-8df05f08cf86@zhaoxin.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: oneukum@suse.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@suse.com header.s=google header.b=Ime0YvLz;       spf=pass
 (google.com: domain of oneukum@suse.com designates 209.85.220.41 as permitted
 sender) smtp.mailfrom=oneukum@suse.com;       dmarc=pass (p=QUARANTINE
 sp=QUARANTINE dis=NONE) header.from=suse.com
X-Original-From: Oliver Neukum <oneukum@suse.com>
Reply-To: Oliver Neukum <oneukum@suse.com>
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



On 29.02.24 17:40, WeitaoWang-oc@zhaoxin.com wrote:

> OK, I'll submit a new version after you help to review the following patch.

Hi,

perfect.

	Regards
		Oliver

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/62891b42-7662-463a-885b-fba1d29bafdd%40suse.com.
