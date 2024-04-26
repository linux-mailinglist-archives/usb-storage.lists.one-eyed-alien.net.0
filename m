Return-Path: <usb-storage+bncBD6LRVPZ6YGRB4PUV2YQMGQEMFGNV7Y@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ot1-x346.google.com (mail-ot1-x346.google.com [IPv6:2607:f8b0:4864:20::346])
	by mail.lfdr.de (Postfix) with ESMTPS id 0013A8B3A08
	for <lists+usb-storage@lfdr.de>; Fri, 26 Apr 2024 16:30:11 +0200 (CEST)
Received: by mail-ot1-x346.google.com with SMTP id 46e09a7af769-6eb891cf5e0sf2753011a34.3
        for <lists+usb-storage@lfdr.de>; Fri, 26 Apr 2024 07:30:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1714141810; cv=pass;
        d=google.com; s=arc-20160816;
        b=UO56jh6ZAoE+pmOI0JzrxKoXcLjBH4my5OshdFkInX1y0o/DbvL6ygVCfJZRtpF5MC
         2Gu6nT9daMasIPhiRHR7NM/jqwG5hMVA5SaHZGAzI9hOMCUkQKfzOePWdR1OfM5a/tB1
         eFCW/K51IZs7XEg2HfMhm6jjraYxOwy6jcjWZEXeomJ9ylfxtXXTBkq0xxFeUm22kgYn
         jw8OxaMgHBTcoMDZkF1PKFXoHSlArXCnSFGrUCDRzM6xHi2bycXTM7b/errpIFSkIzaU
         X+fMPFUNI5zBfcIvwW2NxGyQr/vjwZFH4d7LRBreANj64MosHE3C9DHTyQwi5MlG8oV/
         cGKQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=BcEc4boJCUA8WupblMjO4jonGpVDnJJPTxvGL29uQYs=;
        fh=vOvJd/SLwuI+6RFMDIJLVMQZp6J4A2CvNaSZpbULfcg=;
        b=M3lash37CPWDps/MPGEi2V6+OPznATBSzBIYOUYpS+zDaKnJEieq2ElNgohaxtZWBx
         GwUvCPzn8Rvxh/FqhjVU3wGwq/NdbFvVvhGi9UrgSWQc4aP54jluBkrvhQjIWEqoryCv
         IvlspvQbE82D8xwIrfN1MUKhK/LspTXxp2iSRyXUc7hZ0hFjuQJ65ijNNLnosjqo24ep
         L9kgIq3l0e95TXIgiVjY1B3+okBYYUJnTTtgEHe7EZE0BIF6vPZf79rwrOaDGMi2mxYI
         NHGohckMTo1/MrrvAnCNKziLOYYNaD4BqntXbis/oSsFtwdJsWExliAVQN3BeGLhli+Q
         OAgQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+66302a62@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+66302a62@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1714141810; x=1714746610; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BcEc4boJCUA8WupblMjO4jonGpVDnJJPTxvGL29uQYs=;
        b=b30uNgWOhrG4PFx0jlp9wz2ujij/xbbg+95UPESULfN9xSTek36MipUKVPlApo38fu
         SXEqWG4RpXWlrp8dwHBq/TYdz58Ss6+8vXNLPpbqH3f8g/NQLHO+kvOqwjYvpXuMEigY
         wwOfGu54/SSYWXAdgDKkd6IaWFgHVvu3B47q0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714141810; x=1714746610;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BcEc4boJCUA8WupblMjO4jonGpVDnJJPTxvGL29uQYs=;
        b=Ixc24T2q8hh72hgZ+UDag6WA8mNaFPMjud80AIXdhcCVYbJKJrtihsIwWrdXMAp1M1
         KFdefZKc6eFbEQHCY2vEmDa2nveVi4YQL9kg2didjWO+voDO4dwGAuvpLedse0V/3Y9M
         wYVlT33swoGMmFvB4WZbMy7yRiQ2gv1/CAgeDWNLy1iVO85kEElB3qGFgyL7uxITUvbI
         vZ6jKt6wpaAdQf+5yNNYqkXyZgTz+9DRK+VrD9ZObohrF1gKcq5BVvQu0pTdIs0rlE7j
         0mw4vjW2XK/pRdQ75YAyCM/WIc8WIOlju8IIjvUhFTkeP1pxWOgQAbQtjCCgDBgND/Sy
         +RpA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUU/CWJgkT+Sqm2OpSsoEy5WCU1TrhUDAtDW7+5nxAFokhOa0m2wBzvKAuisVqaG46V0iblVz6U3lM9x5srltXmIskAh2X2Q0GT
X-Gm-Message-State: AOJu0YwnnjiI+ZZGVun5VlcwGsJEH0oc7NKpF/evteu5szTK6OayouzJ
	8iQfBUlqCTz2pftoqH8xZr3oVdCNQTIl9GDhFzprpPm/6bVNnN9WmTul5Fv5nGM=
X-Google-Smtp-Source: AGHT+IEFAnKsEReiOjj/sELVCPonxutMmgwg3VDF0Er7guAI/CrP8C9+f5hTH+NdAfI5IgaMPWGznQ==
X-Received: by 2002:a05:6358:c94:b0:186:45c:d6de with SMTP id o20-20020a0563580c9400b00186045cd6demr2506364rwj.26.1714141810129;
        Fri, 26 Apr 2024 07:30:10 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ac8:58c6:0:b0:43a:1416:3f08 with SMTP id d75a77b69052e-43a3aa54d66ls31297411cf.0.-pod-prod-06-us;
 Fri, 26 Apr 2024 07:30:09 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXGjxbwgvVAMDqFBGyGG+dq+0yFWB2XsI6wXsNFCmqefQCWxCgq5HW2bWZl3Yoa8ZgBcMLFiXnZt/8GCWpWWRaVoW6jLH+NcijWuSMtpAe/iYwnjB8=
X-Received: by 2002:a05:620a:1017:b0:790:5fb6:1c1c with SMTP id z23-20020a05620a101700b007905fb61c1cmr3029579qkj.32.1714141808810;
        Fri, 26 Apr 2024 07:30:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1714141808; cv=none;
        d=google.com; s=arc-20160816;
        b=NV//LIMyzEhyGEx1vBWqyj5WFvYSwo2RU6KVaVWLcqK8R0h++uI04AwylP1KFtFUVD
         8UktsiFlo4csJ+E6agXvGdqnLhKUei7N+TzGdf+SKVfpxNTRuVCdQi38lma7ykLpHZLT
         ExG6mfcAgzQAb86vxM32pgxG6WW5Zfokrj1k/BBJB20qDyJ2hBytlPhzQlGd5J+UT0bG
         m1s6I71h4MTccLy9pY7LjtORHpGfAo4Ik1ie1omItqRXmK1AxnlsiSVJ+ZPCl7yXmJbA
         jYc6ak7OjwOeTH4XcjWXKKEpbHnzT7PyOiEEfBUO94jmv6RieMMnsjTfIWAEeU/ZGkWk
         HzgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=JtFkBGDCvoTHr1FxTazOVm+d9RGbsiCdYS9tDvgoTXk=;
        fh=FqUVr371cc1tTqxoDZir02HaIRYiJLTekm+ByvbbJgY=;
        b=Yorbdg3D3yub8inn33VUY3AvOHnTcvQ2R3r/7exmI1mQjNEhAvnk3TtB7TUCNANVr2
         ISM2VLS9rvCRA5Bsb4XtnQMkkU8GCmwdynYjyvs2YVH3q+EN0b6bsRvcnCDYULfjHn5H
         NwOC1TvzoogCErOTqNKjPqgqKHcNg5v+/FZK6eQIYX7Nm+6opeO7Xwk/ruOKepmXdnsf
         v48tSUw153pyDERmEgdM74ji6KpLjxdH3vtcupEnZiRzOqZ9emxV1ILhQGX3OQt6FHuS
         gK0wJ8OaXX2cIDBAcAVoWmy1N9d00JPeIc68Hy6+sjp5ycpQXu2TBeBmC/b2rhZXx3EH
         h0jw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+66302a62@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+66302a62@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id x14-20020ae9f80e000000b00789f314248bsi20092080qkh.659.2024.04.26.07.30.08
        for <usb-storage@lists.one-eyed-alien.net>;
        Fri, 26 Apr 2024 07:30:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+66302a62@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 527438 invoked by uid 1000); 26 Apr 2024 10:30:07 -0400
Date: Fri, 26 Apr 2024 10:30:07 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Norihiko Hama <Norihiko.Hama@alpsalpine.com>
Cc: gregkh@linuxfoundation.org, corbet@lwn.net, linux-doc@vger.kernel.org,
  linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
  usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH v5] usb-storage: Optimize scan delay more precisely
Message-ID: <6362de20-ed91-4856-ba0c-d0619585f0eb@rowland.harvard.edu>
References: <20240426080231.3062-1-Norihiko.Hama@alpsalpine.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20240426080231.3062-1-Norihiko.Hama@alpsalpine.com>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+66302a62@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+66302a62@netrider.rowland.org;
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

On Fri, Apr 26, 2024 at 05:02:31PM +0900, Norihiko Hama wrote:
> Current storage scan delay is reduced by the following old commit.
> 
> a4a47bc03fe5 ("Lower USB storage settling delay to something more reasonable")
> 
> It means that delay is at least 'one second', or zero with delay_use=0.
> 'one second' is still long delay especially for embedded system but
> when delay_use is set to 0 (no delay), still error observed on some USB drives.
> 
> So delay_use should not be set to 0 but 'one second' is quite long.
> Especially for embedded system, it's important for end user
> how quickly access to USB drive when it's connected.
> That's why we have a chance to minimize such a constant long delay.
> 
> This patch optimizes scan delay more precisely
> to minimize delay time but not to have any problems on USB drives
> by extending module parameter 'delay_use' in milliseconds internally.
> The parameter 'delay_use' is changed to be parsed as 3 decimal point value
> if it has digit values with '.'.
> It makes the range of value to 1 / 1000 in internal 32-bit value
> but it's still enough to set the delay time.
> By default, delay time is 'one second' for backward compatibility.
> 
> For example, it seems to be good by changing delay_use=0.1,
> that is 100 millisecond delay without issues for most USB pen drives.
> 
> Signed-off-by: Norihiko Hama <Norihiko.Hama@alpsalpine.com>
> ---
> V4 -> V5: Simplify parser/formatter code and fix documentaion
> V3 -> V4: Separate parser functions from module parameter set/get
> V2 -> V3: Change to use kstrtouint only for parsing decimal point
> V1 -> V2: Extend existing module parameter 'delay_use' to support decimal points

Reviewed-by: Alan Stern <stern@rowland.harvard.edu>

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/6362de20-ed91-4856-ba0c-d0619585f0eb%40rowland.harvard.edu.
