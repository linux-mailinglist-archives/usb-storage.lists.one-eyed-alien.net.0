Return-Path: <usb-storage+bncBCC2JRVCV4NRBYOV6LCAMGQET7XINLA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wr1-x447.google.com (mail-wr1-x447.google.com [IPv6:2a00:1450:4864:20::447])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D9E9B24CDD
	for <lists+usb-storage@lfdr.de>; Wed, 13 Aug 2025 17:10:26 +0200 (CEST)
Received: by mail-wr1-x447.google.com with SMTP id ffacd0b85a97d-3b782c29be3sf3570812f8f.0
        for <lists+usb-storage@lfdr.de>; Wed, 13 Aug 2025 08:10:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1755097826; cv=pass;
        d=google.com; s=arc-20240605;
        b=AZIH4fFpL27b66pTntMIIgyNrnL+fe6HHDZxaLE+I/IGDv8UFxeQAi/oTvWNzIaVbw
         WXupY8OYhW2IKIt/dLtpUmngGDA18YYvWFBDx8wCBZ1O9WF2VWfjHbsIginAw5/48xqB
         Hf4iRxoRPvhHLnyC96XXIW/juXHRzqiNuj6qD0tTGTSX6EuGdSOhQ7Ccs0sIVmHCL9LV
         71Q//M7k3b4SDVtH76TLbGyMwQg6582GRWAUP05ONj4cMWkUbXYG8JPPALHtA8KCdPb8
         cvSTji35MXhcw/j3LRQ7m1HXYCDQ0DITVr7AbMxZ7EH4Q7BWHpIupY04/jk4lF+GLxGE
         aSnQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:references:message-id:cc:date
         :in-reply-to:from:subject:mime-version:sender:dkim-signature;
        bh=1jYBBnRwb7l8H39wvsTuLqF6vEVyClmnw/cMuff+p0A=;
        fh=f1xWqp1xSqfPSwg0TqV5XIs3C0KguXeFGFQjL4ssdBQ=;
        b=YtczIul+XK5srcW9h5ggJpk/nxQD1F+ea42L0AJ2Bv2EEFXD2ijyTeX7pF9cAUEwr8
         BdQr8rMcatdSBURWac1mG1UvOQCnm77dZPE3KVdWuk+h9MlZq/Cpywn+CnyzV3E84usE
         6git+tjLeDecRutpuxIkA7+GquBx4m68L3gRexuqiobD8YBwxQoyYZc/Bpakdclbc+CR
         jMhz9/9vEQZ0xF9XMr70kPK9DFOYeF5qNTXhK0d1ladB0FGL3CZB1I4NjpZrRm5elczM
         XCbicigormHirThucg4xjm/TnufJfx7Kv+e1TrdnMrPN7LEdDdX00wmlsmgrdJ/8CtFl
         I8lA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linux.dev header.s=key1 header.b=SdMeFhAV;
       spf=pass (google.com: domain of thorsten.blum@linux.dev designates 2001:41d0:1004:224b::ad as permitted sender) smtp.mailfrom=thorsten.blum@linux.dev;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linux.dev
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1755097826; x=1755702626; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:to:references:message-id:cc:date:in-reply-to:from
         :subject:mime-version:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1jYBBnRwb7l8H39wvsTuLqF6vEVyClmnw/cMuff+p0A=;
        b=WkVak9FnQs4nnzXjTQ3bdi/PNG2TzKibKO6TY8d6ObK/dpqRa0p1IarYj/dzA1xync
         MROMeazy5ARikvRaG5KxvCurO33gUwRqYd/Oj4WU+9l80MPef9HI2MN5GWm/k2IYpGfU
         2c4Autc9u96dqU7kDi1MHFaqQSxS9flp21N20=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755097826; x=1755702626;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:to:references
         :message-id:cc:date:in-reply-to:from:subject:mime-version
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1jYBBnRwb7l8H39wvsTuLqF6vEVyClmnw/cMuff+p0A=;
        b=O5AaRdoB38b+TGrZqN2w2lrmgFb0j33sYT7Rem1lDNd3a9u29FJHwiyBDFEd1ekplz
         vqo34vO8N+qHgrztrafLy1OLdGf65r6STl9vCLb7bZN0vvuRIrLS6FVuRe8bPtAA319U
         muc0GWHsB4QcF9xrN8sRtdlvS5p8UJTjRr4tSGQ1sivjICManTIZXDd1rPjsLz9BVVXO
         iiUhcgq6cOgIg6j6Brd7dBN96tR1f3PEiTyFY71D/a4PNcCAR7wctejHsBqVxZC2pTjU
         tWfONiiS0r+a9p5E3ucw5+Yxk3RYE1x3N6EPzpGvpwaf0nnsFMFKpfnNEO5pytRN6QtA
         O8MQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVUam2+v+gNKGDilSCqVY4AZ/72YtFM5U6AOIzsV+0g0HdBGzyJGyXYN0Twz68RxJUI7IKu5Q==@lfdr.de
X-Gm-Message-State: AOJu0Yyz+3YAeCZH/51B3y4SMwv2w7iRzDWsi8l6ZzHV1ZBUlT+AvaCo
	SeNmkyvqhLCgrhG7Rd1kdSzxyQHvOoZ+IhqCmis2AWiYil3kCi65f4XcwnN/exFx2Ko=
X-Google-Smtp-Source: AGHT+IESQgiIKmO8hbvBmJNh+RoMbjrEAQR8DoOAh87r74jvg/QuQel0GHiPw8TogWGNe69FeAi68w==
X-Received: by 2002:a5d:64e1:0:b0:3b8:d337:cc12 with SMTP id ffacd0b85a97d-3b917e458a1mr2841661f8f.22.1755097826011;
        Wed, 13 Aug 2025 08:10:26 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AZMbMZeXgzKOgFjgiJerBFwCi6iosQDJO2Nag0VNjYaYr6goNA==
Received: by 2002:a05:6000:1acf:b0:3a4:eed9:752c with SMTP id
 ffacd0b85a97d-3b8f9597680ls2855519f8f.2.-pod-prod-05-eu; Wed, 13 Aug 2025
 08:10:23 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUlLd/oaS/fTUObAHIDwVehDm21Nv4UVqbgByhh8Ae7bKeli67x59lDrKD5TlK6DIcMRUipSsou+24idA==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6000:430a:b0:3b8:ff5e:f3cf with SMTP id ffacd0b85a97d-3b917eaebddmr2717874f8f.32.1755097823302;
        Wed, 13 Aug 2025 08:10:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1755097823; cv=none;
        d=google.com; s=arc-20240605;
        b=KsVoehR/6FKOJDYOfhOdyx4mm9TI1Wzm9yLReB43f79fZvr1hdVyZ77Au4gl6MQA8N
         ciJzYOunR71VJrGHD7ytBfFeGuE+2lEjjG3yN9ynRN2LtZyHcbf90JhH75GLyCLn/8sa
         NwTByyjKx0JvM8UeXwKNwg7T512P7ouoUaPPwFXyJPDyT/aPs2djR6mRHvWCoTUudhs7
         iCe+SeBaMBe1ZUJpPKsda/OviiFFO4SCtt8+Tp2EVm9+0hWQzcxroHTO2sN4QhFcaq9a
         hXHQwidenYwyIrDCoo4WqN20HLS9oZWar+HZhOKWsuqxfSpGIxvZxgG8UvWjM3hF6qfK
         Zhkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:dkim-signature;
        bh=AGeRG7EIYSd/DYHs9x114MtCV4AwqXM+cwNPFQAJbMo=;
        fh=B7xbHsbzpr1nfc1/MaaVznvaaqc15A98N35CKO/jcR4=;
        b=GHqQn2qTR/0I+IdmQwKiI54uNO+MZAPL8g+wUbnHUlD48G7sILdqU4LTMGEZST/64R
         itWI3BgCNv5vPldiQiOOOwsgYFAHtLgxfyFcfUPtPRnfcHmb/kioMArJRCA0GIMvDTww
         IWX/2WrjBA5boBJnmztYXFaIfRIQdYvJqUGXnILP9v12y4WOq/7mYLDOHLc4ExKIZQuR
         hN6KFqilpzt87IJRBISTO+3vyikNE1Su8ADq78iVk8z1Ws6hWveCkWj8YJkh32RmdGmx
         dKUc9LhK6g4YlzD5zJQ78idldr6HNodLIGp7Hglp9CDyg79RpNNFrxhFE+t4n0/tOKkr
         x/3A==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linux.dev header.s=key1 header.b=SdMeFhAV;
       spf=pass (google.com: domain of thorsten.blum@linux.dev designates 2001:41d0:1004:224b::ad as permitted sender) smtp.mailfrom=thorsten.blum@linux.dev;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linux.dev
Received: from out-173.mta0.migadu.com (out-173.mta0.migadu.com. [2001:41d0:1004:224b::ad])
        by mx.google.com with ESMTPS id ffacd0b85a97d-3b8e1cf6234si15316191f8f.290.2025.08.13.08.10.23
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Aug 2025 08:10:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of thorsten.blum@linux.dev designates 2001:41d0:1004:224b::ad as permitted sender) client-ip=2001:41d0:1004:224b::ad;
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.700.81\))
Subject: Re: [usb-storage] [PATCH 1/3] usb: storage: realtek_cr: Improve
 function parameter data types
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Thorsten Blum <thorsten.blum@linux.dev>
In-Reply-To: <a6deb8d0-dc8e-4d4a-94d2-ed2617091eef@rowland.harvard.edu>
Date: Wed, 13 Aug 2025 17:10:10 +0200
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-usb@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net,
 linux-kernel@vger.kernel.org
Message-Id: <E3437C91-EF05-4EB2-8998-10D599ED3AAD@linux.dev>
References: <20250813101249.158270-2-thorsten.blum@linux.dev>
 <a6deb8d0-dc8e-4d4a-94d2-ed2617091eef@rowland.harvard.edu>
To: Alan Stern <stern@rowland.harvard.edu>
X-Migadu-Flow: FLOW_OUT
X-Original-Sender: thorsten.blum@linux.dev
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linux.dev header.s=key1 header.b=SdMeFhAV;       spf=pass
 (google.com: domain of thorsten.blum@linux.dev designates 2001:41d0:1004:224b::ad
 as permitted sender) smtp.mailfrom=thorsten.blum@linux.dev;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linux.dev
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

On 13. Aug 2025, at 15:59, Alan Stern wrote:
> I just looked through the original source file.  What about 
> rts51x_bulk_transport_special()?  Shouldn't its buf_len parameter also 
> be unsigned?
> 
> For that matter, what about cmd_len in both routines?
> 
> And have you checked the corresponding values in all the other 
> usb-storage subdrivers?
> 
> As you can see, worrying about the difference between signed and 
> unsigned values, when it doesn't really matter, quickly leads to a 
> morass.

There are many other instances throughout the kernel where types could
be improved, which is why I originally combined this with the if check
change and limited the data type changes to that scope. Feel free to
skip this one, as it might not be worthwhile as a standalone patch.

Thanks,
Thorsten

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/E3437C91-EF05-4EB2-8998-10D599ED3AAD%40linux.dev.
