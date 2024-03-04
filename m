Return-Path: <usb-storage+bncBD6LRVPZ6YGRBAV4S6XQMGQEIJ6Y6OI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf45.google.com (mail-qv1-xf45.google.com [IPv6:2607:f8b0:4864:20::f45])
	by mail.lfdr.de (Postfix) with ESMTPS id 09DD3870471
	for <lists+usb-storage@lfdr.de>; Mon,  4 Mar 2024 15:43:16 +0100 (CET)
Received: by mail-qv1-xf45.google.com with SMTP id 6a1803df08f44-690316dcdb3sf50641266d6.0
        for <lists+usb-storage@lfdr.de>; Mon, 04 Mar 2024 06:43:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1709563395; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ckxv4H7kuZTCxiRO7ByB8/YeCVH3BH+1PRCEbQiv7GmeY3OGgHdmcjBH1AAISiPq+C
         ZpmIeBPHI8MRhtoxoUCRFq+dHCC1pV6Y3iUK2cujXBbG1NHzDuICRDKyG2BrM1e6MNsC
         AUjXqiKJMThtu5F5wxuqTraCQXSb+hXOxB3kZG7McfEugZzmZou2E/LQVmzEczGdYqWn
         gChXSdvA3nEg+IBpYMcNytf9qrRK6R73OfWaL00JWfd5AFuoKP+8EVEYww8pQsODEGlc
         FOsSFTJgFk7ImbH8hDBfDj+H4omdKGl6AekQytI7xlo7DK/7vqUHdRHmV2pQCGXoeW9b
         13zA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=3F9uMiys1i9LP9R96phwaIOFAflhlclAS53tUox8ijA=;
        fh=Q3Tr0V4pOaeV9f5up4Sgu6EL7D2+rY5irTVeUScqyiY=;
        b=Rj/qPaGHYMECs45F6mGlOZe5ZsRmvaNsB0orvYkGMX9EqUVBI2fEmY+0+vzYI+1vvX
         gzh9fKCyH03LorKMrEQsEOZsxsCmFBrsqQNAxhJ8ZLZ87R3kIppzyTA3PTy7BwsTStjt
         dMPnNZQLA4ZukWMGClILSE6KAQr8yY6n6c1e49YmAYG3zdsShFedGPK6rMSl9x4YaJeX
         /W21oIhQBRx6lXehPQPVSg82OZdfMyVeKwvOO2a+n81i2NAMD3Fs1r/3AKpz+ti8rQPM
         7my9xWIjQYmSjMKaQ+faAglHXtmdlofzQR5xzWFKU6GqkT9Wbe0/8c/lChIUQ37/zk0r
         n0tg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+65ee3650@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+65ee3650@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1709563395; x=1710168195; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3F9uMiys1i9LP9R96phwaIOFAflhlclAS53tUox8ijA=;
        b=KcctH0wFDjfVmgvlyc5o5RMQQh8xFu3hYvzSA/bckFhnhEtR8IVd6Ak/N/dbp2Cv/k
         NF3Wo/IxWHc09p4i9SP1ZKE22Olg1Bajh62GRCZqIc+0t/HqP94FYEG7hueuSkztlsLi
         2oUSYIYCg1PsMJi7RLML6fpzY94dYho7uOEBA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709563395; x=1710168195;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3F9uMiys1i9LP9R96phwaIOFAflhlclAS53tUox8ijA=;
        b=oVr+PRCwOiXp3FCquEL/YbrikKP65hmShBGfC+/g/atVh0bHNzwHhyxcvG4FIsA1ua
         4mzXxkDVMqocfz9OymsdCnc1ryRDbOnfYFUD5ifFSHmri/WeAWfLeFLcvbnzbNHWOu6D
         UBD0KYsLgR1I6Fyphhcm2v7qzmyRg6X5u6QMKy2yM/2XvO0+wghcXvrbatpW8Tk05zIo
         hYGMEqzlo0fQ1bWntTsy42mH8iJzAw5E9MZw14CH6Cg1CDo4PJYVrur3yj/VVbttUsW1
         f6pb064x1F+QkEJ/yNvEckjJ95w0jVeL3ZMtdmTK843YdHBTYEXa/B1R1c5kD9Hz92Cs
         syaw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWqj1zkdS0PX5W8NdX51oTK7K7YvV+w4T9vCZTXvwGefHXRptTa3SP/eYMg18Zi6OuP15fH9bbZ41lm7KKds8srg6DM4ck+9/dF
X-Gm-Message-State: AOJu0YwjeA4a9IWeyjWRfppiNTmH0B0S+m/L12CHjO96v+ZqiVsW2utw
	iF8WRHs3/Jsp5LiWbaNhEQmcMTMtU4XkhvhxWZZE04wY8qD6FbFv33kPktIB2Mk=
X-Google-Smtp-Source: AGHT+IH5OKGpDj4xwvA82VssKFr9i6OPo0TK/knpOcWix75WjHVDSz+FNHMF+5GU1TilxKfpWklwtg==
X-Received: by 2002:a05:6214:1408:b0:690:5a31:2678 with SMTP id pr8-20020a056214140800b006905a312678mr8000423qvb.27.1709563394812;
        Mon, 04 Mar 2024 06:43:14 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6214:226c:b0:68f:1312:8dd0 with SMTP id
 gs12-20020a056214226c00b0068f13128dd0ls2126448qvb.2.-pod-prod-03-us; Mon, 04
 Mar 2024 06:43:13 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUByZECptJUpcOouGIzzn0CKWob3Em2MJ2aQlYKiqLQAPRfHbKDVJqz8aCfsab1fQW/NPEVxVHM/LpNP3Q5t+MiUNjE6FYAo+Oy2ttCnjGLuQesnIo=
X-Received: by 2002:a0c:ab52:0:b0:690:452b:ecbb with SMTP id i18-20020a0cab52000000b00690452becbbmr8793055qvb.39.1709563393653;
        Mon, 04 Mar 2024 06:43:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1709563393; cv=none;
        d=google.com; s=arc-20160816;
        b=C6GxRea5oBVJXOSkBER2yqtsRfHgTp9o4728I3mQbUdzTPP60uenYjHC+NFKAYKI0f
         p4AwtLTNwaPm0eIdSQmwjfrrJxay/ZCRHfiIPoHUySUeBcgVv5RfcfIxy2Y9EC5NcwjG
         drcp1aKjyEEKJGFermps/5GbLZkw7RlvDwC9PRM5iPFID17ek8NJFgpcXsLYGtNjIIxX
         RHCuHbHXGyMb/CYTtvOw+eY3t9kPknB0nn3R8uuV86at/BAALYeOfQIoK5mOrdgPTX/h
         IxLFeD8+qocvR+Dxlam6YEzCWoXCU6Or6FWsbCblRV7wedIJ93zyX0C5k/0sbbo3r6fS
         x+pA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=PJi7YKKS9o/052tf2dU2wmF6zmPfEtSa2kStKCJbr3o=;
        fh=8MeedehL+Go/K642bsBRlGiwNsLp8ASx9otEgjEmA+M=;
        b=ytRT4qhf7RCxkJHveFsohC41SyyX9tnwZiMU0Jd38zLWAwAL5ejNaoHZqtEg0Uy9th
         Kx8Wq3ucoMgXkKBBdzfaGO0WIk9vN0w+XmzV60t+Z7z8/hPJGOgNFEi+Llg1lrmdLZZJ
         s+CptVdVjwra1i1eRijLNdIfw4URv36eYhh4KjW9NnoL0LDQBsfPBqgI3UXuRT8ayDe1
         jWVtePEmZ8zixnkSJW17a30iR+uu2UCFQz7xxGsWGR7aiIVkmEt4xhgcpQ0DxWd0RwiD
         dfPkyMgTJ/hbsKtVptgeb6rhRWyA/CTq8YHohERkhh9A0ywBkkfesYW11Q10gI+G/rJ3
         Zkqg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+65ee3650@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+65ee3650@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id o6-20020ad45c86000000b0068fbd86b90fsi9945764qvh.497.2024.03.04.06.43.13
        for <usb-storage@lists.one-eyed-alien.net>;
        Mon, 04 Mar 2024 06:43:13 -0800 (PST)
Received-SPF: pass (google.com: domain of stern+65ee3650@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 122045 invoked by uid 1000); 4 Mar 2024 09:43:12 -0500
Date: Mon, 4 Mar 2024 09:43:12 -0500
From: Alan Stern <stern@rowland.harvard.edu>
To: Tom Hu <huxiaoying@kylinos.cn>
Cc: linux-kernel@vger.kernel.org, gregkh@linuxfoundation.org,
  linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH v2] usb-storage: Add Brain USB3-FW to IGNORE_UAS
Message-ID: <eb015716-7695-4567-a553-0b6960cb2026@rowland.harvard.edu>
References: <20240304031656.174888-1-huxiaoying@kylinos.cn>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20240304031656.174888-1-huxiaoying@kylinos.cn>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+65ee3650@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+65ee3650@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
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

On Mon, Mar 04, 2024 at 11:16:56AM +0800, Tom Hu wrote:
> The UAS mode of BRAIN USB_HDD is reported to fail to work on several
> platforms with the following error message, then after re-connecting the
> device will be offlined and not working at all.
> 
> [  622.518442][ 2] sd 8:0:0:0: [sda] tag#17 uas_eh_abort_handler 0 uas-tag 18
>                    inflight: CMD
> [  622.527575][ 2] sd 8:0:0:0: [sda] tag#17 CDB: Write(10) 2a 00 03 6f 88 00 00
>                    04 00 00
> [  622.536330][ 2] sd 8:0:0:0: [sda] tag#0 uas_eh_abort_handler 0 uas-tag 1
>                    inflight: CMD
> [  622.545266][ 2] sd 8:0:0:0: [sda] tag#0 CDB: Write(10) 2a 00 07 44 1a 88 00
>                    00 08 00
> 
> These disks have a broken uas implementation, the tag field of the status
> iu-s is not set properly, so we need to fall-back to usb-storage.
> 
> ---
> v2: remove junk information from patch.

No, the junk information is still present.

> 
> Acked-by: Alan Stern <stern@rowland.harvard.edu>

And I have to rescind this Acked-by.

> Signed-off-by: Hu Xiaoying <huxiaoying@kylinos.cn>
> ---
>  drivers/usb/storage/unusual_uas.h | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/usb/storage/unusual_uas.h b/drivers/usb/storage/unusual_uas.h
> index 1f8c9b16a0fb..98b7ff2c76ba 100644
> --- a/drivers/usb/storage/unusual_uas.h
> +++ b/drivers/usb/storage/unusual_uas.h
> @@ -83,6 +83,13 @@ UNUSUAL_DEV(0x0bc2, 0x331a, 0x0000, 0x9999,
>  		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
>  		US_FL_NO_REPORT_LUNS),
>  
> +/* Reported-by: Tom Hu <huxiaoying@kylinos.cn> */
> +UNUSUAL_DEV(0x1234, 0x1234, 0x0000, 0x9999,

The junk information is the "0x1234, 0x1234" values.  And if you try
removing it from the patch, you'll find that the patch doesn't work.

> +		"Brain",
> +		"External HDD",
> +		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
> +		US_FL_IGNORE_UAS),

Fortunately you can get the same effect by setting a module parameter 
for usb-storage.  For example, in /etc/modprobe.d/brain.conf:

# Brain USB HDD doesn't work in UAS mode (tag field not set properly)
options usb_storage quirks=1234:1234:u

Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/eb015716-7695-4567-a553-0b6960cb2026%40rowland.harvard.edu.
