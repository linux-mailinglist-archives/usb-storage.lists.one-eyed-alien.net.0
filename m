Return-Path: <usb-storage+bncBD64ZMV5YYBRBEOZ57CAMGQEJPLZR2Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x848.google.com (mail-qt1-x848.google.com [IPv6:2607:f8b0:4864:20::848])
	by mail.lfdr.de (Postfix) with ESMTPS id E8E5BB23DBF
	for <lists+usb-storage@lfdr.de>; Wed, 13 Aug 2025 03:38:26 +0200 (CEST)
Received: by mail-qt1-x848.google.com with SMTP id d75a77b69052e-4af117ffc70sf153592901cf.1
        for <lists+usb-storage@lfdr.de>; Tue, 12 Aug 2025 18:38:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1755049106; cv=pass;
        d=google.com; s=arc-20240605;
        b=P2930a5bG0HeUilzwhlZ8OtOl+RDNDzuXCVUVbfuF5de0UumqceYfMZ3xc29QjR6pc
         oGQy7teXNXdZOUud7CsoJ3r0xZAHD3kGIHK+KtW0ZNTQUVFBmwfU+8ewN5u1pWkZK4eb
         +nTFh0zvq3ccWM1t+F0B/9FGNhxv2PEf6g/LhSKrAlGLtalKdMpJCfZFm129/pACsyqp
         /VMDhgDk+tTlm0JtXYB4Nf3bHiMH0AsBDre/fAO2VKv32nunHJLOjn4L4QAnhRpXKtMz
         Ciice3uWAaVANmhRQGXf++hkZkCKRl8hlMFFjoDRyrBtHt54N5De6/iERsVX6jflYIu4
         +C8g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Kh4I/DFAFQrHAnl7alXNYQ11EJl4qs+YQyQ8kCNH3aM=;
        fh=mc6SgdD6T+r8PEC4dbMFrrbKqZLNkoS+5Krmizjn6Ak=;
        b=NkK+6WefISTtJhMbt1tEY0zixcEhR05a7w27jFuhLYrDceY8z4edrT+kG3HVuf6m/Y
         q+q1KrdefUyZ1HHReP9LVH8wM7SOvbc1gcT1wSnCiSpAyp3WXuEICzn4p1KUIiCdBEiR
         oQZS+IryD1PGQz+yOD4ZEzqfRo/jGmvvGwqH6fIfyozFVUnq+DgsWWV/6X01c/1EIk6l
         WpqXlziaIW8n8H5L6bDyt3OnWByOrJ1RvyidSzAfmUSqLI9RmnmryZEMoelulzo+JfD4
         R0FmVDnQqD4ZQo17hDu5XNZfZL1FNl6N0WnQdGQ1dA08voe/eVV0YASpjAmJxjVSqV0S
         DapA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@rowland.harvard.edu header.s=google header.b=PAyNpFZq;
       spf=pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=pass header.i=@lists.one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1755049106; x=1755653906; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Kh4I/DFAFQrHAnl7alXNYQ11EJl4qs+YQyQ8kCNH3aM=;
        b=RFzueUSkVLhcmB+41p4QQioz9k00RgwqvAYIomcHBTW0LVQZLR2ciwL3SnwBR3GeWx
         p2mmX4FRXPfvF+PKUOh2ITcGoQe3x43EEXo0AQRaJVzoNdSMNjcj3f/OWajnDRvn2ynj
         qxtQJZ6tR3rcS1ZkyqlYonLABLBfTYJ+zA1EU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755049106; x=1755653906;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Kh4I/DFAFQrHAnl7alXNYQ11EJl4qs+YQyQ8kCNH3aM=;
        b=wa5nL8VqZIJK15dnlmO7KWeminqIaQQJK4bY331pEfA6EhhQe9rHiKtyE09sESk2Sa
         ajFrhHSEGDEaZEmqZwwECfrMWerFsrGZjmY4AUSeJvg/pcoJBW3uyTJ1KWcDdpYma6gJ
         QRK0cYkxBvauljzxWnC47ad8U2cZ2qrO3CHYKvzLNpKnuH8aRDrE8hfWmptNI4rNiWqh
         zVA+8FJqdKr2TiPBLPBfZM8t5ZR8blcRZKw5hnQzzpUgo7Q15g7N7XjbKIgH/Iqoe7Cv
         7ULKNeCSgHOTQiVI/GeId8CTaz1pHx0o4SWcddH+gFMfz7cyM0Jgl/m68BOAFTqfu/mO
         LsFw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCW0BlBmpAy2OjLMZizJ25BDI+uucLd440xB0l6m58Os8j1gV6WHyqBuZMgbxbglhI6+iKDRWw==@lfdr.de
X-Gm-Message-State: AOJu0YyiQs469kvwbZgva7tvtHXQBEPesSqUOEK8PxBqxjO/V473jO5H
	qK7clY7X+Ifb9wUBM7t0yqO1h12A/6QsZlYCQp2UP00qCCOQ3iWWsV855xAw8T9QZx0=
X-Google-Smtp-Source: AGHT+IG4rS5EmQaS2NjtT1Pp5PMlS2dszRvfzG4Nr36yfsQYUjUtPblJh121obcQxCV1eKC2TKWDzQ==
X-Received: by 2002:a05:622a:2591:b0:4ab:63f7:9a80 with SMTP id d75a77b69052e-4b0fc6f55a3mr17538251cf.13.1755049105729;
        Tue, 12 Aug 2025 18:38:25 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AZMbMZeSsf8qRlrvxZeTohku51jYxX+3lm52S0/AFBV0vQRpog==
Received: by 2002:ac8:5891:0:b0:4b0:889b:5698 with SMTP id d75a77b69052e-4b0a045815bls96353391cf.0.-pod-prod-03-us;
 Tue, 12 Aug 2025 18:38:24 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWSFoCj62aV6c74ZWiMW+R8GOHi5yIxFkoghJJEooEeswdXCEF8+RqMX5BE16zvLZVKTaciqTzheMMocQ==@lists.one-eyed-alien.net
X-Received: by 2002:a05:622a:252:b0:4b0:8773:9b0f with SMTP id d75a77b69052e-4b0fc6bc591mr18355181cf.10.1755049104725;
        Tue, 12 Aug 2025 18:38:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1755049104; cv=none;
        d=google.com; s=arc-20240605;
        b=KHd+nFpPw2bHKyR3OcnvBfy8dVRYGd4fI2b4ErSM7UzzdEQU9DkhwN2ryaxOXaaj/F
         wACceGNxvTMkHOWXIgvwMtoSpj7qAL3SQ/H47GiGE5xawwPv9xiWxsW/G5Jko/hYTBm9
         LzgEbLd60+oO/9P4v3tgEKg6tMxofHYKdXHeDN7Xh/tsta1SvIywSZaEArIwU3OUveDG
         44iOMrzdvHPHiFauC+l6MyIqFK/WlnZiJ9OGDKSDD4F8Hl+Hxx/Fxr7R3kBXT3Wi+A2l
         rYJ8EL5ID8fBY3CCZXHSSevOAWtq4VO6EyIl3U+u9YIFlGpE+96qAFWClhPBhZOBRy/C
         +StQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Xf1ks6JUZ1IFFm+2x9B7TBmLSYkbRnh2E4KrA/6BMZ4=;
        fh=aAKTEWmao/ee/KoUhlnbksgLpA4e9063eqDkssZ+kLk=;
        b=MJqbzrCIIXWSlwUyRVn/m3itQB9hg1MVDOep+/gskc7vRLfKENA4V2z3ZU1k8OzspB
         q6vX6XKnnPSYOn/EIp7Uig36piQZv+zJHr24p/w2y+cgskNMlCYmtf3Z2OyLIziAJAtu
         wnddUnrUzc6bw99HR391IEqDR2ak6lhqmC0WMTXrRjNva1PI7B8B99QmCZ1fDhCDKYsz
         /K+nn8731yYogqqM2z5ADgqBOtspAy1q0/OyBKfYEIP90AD+u0pmJQZq2ZDrvQ5vQPw/
         HCQl2lXm/OA6cWoxwDAUF+0rGrAadHm2tFMxX7mg9TqL5d0TdUHFeyGUKjkYvQOl39ev
         OI1w==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@rowland.harvard.edu header.s=google header.b=PAyNpFZq;
       spf=pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=pass header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id 6a1803df08f44-70961a33d16sor166397246d6.0.2025.08.12.18.38.24
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Tue, 12 Aug 2025 18:38:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCUgoSyBraKyflalMqXOkUW0cAGHff1+Qb2/JUOYWXjJrqLU3UsRA/5nok67kEqXJwTA0bBm/VkSt5svAg==@lists.one-eyed-alien.net
X-Gm-Gg: ASbGncui7mv1w+CtsdPPvblpmfW3BciZf3mCvVrlDQSv7qHoUVV8jtWXKnhHJ2XGfF/
	kfjjCl8pq9a9qSFzGwHkeRop8+cnu38S1HRYKTyPEBHMlmXL7Xzwsgud+6X799D4Ct4PBW5ddM3
	p5GfRp0iwGQ32ZxS3oX+SpTzbeDIigfaSj7xEPu0SDqgeomN2STmKI+geaxcoxfmYqeXuRSl17J
	z6SavtGDIVLuANvQ2pbe5y7l/Ai+9pcWHCb4UuIFC06knNwUfO8/6Xkz8CDR2638DhgvRpKrWSG
	0M2BGU98+Hdj0AE/+KGk2ragavar/+8MAI7ju4mqsIZbj9OSltYPiDjShiLOmJRU+6ucOrDL6f/
	/k/GZAFfWdG1GAsf5V7HELvg=
X-Received: by 2002:a05:6214:21c2:b0:707:5ca4:baa5 with SMTP id 6a1803df08f44-709e85868ebmr17221766d6.0.1755049104308;
        Tue, 12 Aug 2025 18:38:24 -0700 (PDT)
Received: from rowland.harvard.edu ([2601:19b:681:fd10::fa48])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-7077ce39fb3sm186698816d6.82.2025.08.12.18.38.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Aug 2025 18:38:23 -0700 (PDT)
Date: Tue, 12 Aug 2025 21:38:20 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Thorsten Blum <thorsten.blum@linux.dev>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org
Subject: Re: [usb-storage] Re: [PATCH] usb: storage: realtek_cr: Simplify rts51x_bulk_transport()
Message-ID: <49559415-4493-4b90-a9bc-c6b9074a61f6@rowland.harvard.edu>
References: <20250812144358.122154-1-thorsten.blum@linux.dev>
 <b11a19b6-9fb3-4fdc-b94e-33ff01a634b3@rowland.harvard.edu>
 <19E72C72-AFD3-4D13-8F14-9A1F96B971D3@linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <19E72C72-AFD3-4D13-8F14-9A1F96B971D3@linux.dev>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@rowland.harvard.edu header.s=google header.b=PAyNpFZq;
       spf=pass (google.com: domain of stern@g.harvard.edu designates
 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=pass header.i=@lists.one-eyed-alien.net
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

On Tue, Aug 12, 2025 at 11:28:56PM +0200, Thorsten Blum wrote:
> Hi Alan,
> 
> On 12. Aug 2025, at 22:06, Alan Stern wrote:
> > On Tue, Aug 12, 2025 at 04:43:58PM +0200, Thorsten Blum wrote:
> >> Change the function parameter 'buf_len' from 'int' to 'unsigned int' and
> >> only update the local variable 'residue' if needed.
> >> 
> >> Update the rts51x_read_status() function signature accordingly.
> > 
> > That last part isn't really necessary, is it?  It doesn't make the code 
> > any clearer, less buggy, or quicker to execute.
> 
> It's mostly for consistency because the parameter 'len' is used to call
> rts51x_bulk_transport() which now expects an unsigned integer. I'd still
> argue that it makes the code and the function signature a bit clearer
> because now the type communicates that 'len' cannot be negative.
> 
> >> 	- if (residue)
> >> 		- residue = residue < buf_len ? residue : buf_len;
> >> 	+ if (residue > buf_len)
> >> 		+ residue = buf_len;
> > 
> > This really has nothing at all to do with whether buf_len is a signed 
> > quantity -- it should never be negative.  (And I have no idea why the 
> > original code includes that test for residue being nonzero.)
> 
> I agree with "it should never be negative" and ideally the type should
> reflect this if possible.
> 
> It's also easier to reason about the code when comparing two unsigned
> integers than having to think about implicit type conversion.
> 
> > Much more serious is something you didn't change: Just above these lines 
> > it says:
> > 
> > 	residue = bcs->Residue;
> > 
> > It should say:
> > 
> > 	residue = le32_to_cpu(bcs->Residue);
> 
> That should probably be another patch, no?

So we're really talking about three separate things:

	Making buf_len and len unsigned;

	Simplifying the calculation of residue;

	Using the correct byte order for bcs->Residue.

The last one fixes a real bug; the other two are very minor by 
comparison.  Regardless, they should be in three separate patches.

If you would like to submit three new patches, please do.

Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/49559415-4493-4b90-a9bc-c6b9074a61f6%40rowland.harvard.edu.
