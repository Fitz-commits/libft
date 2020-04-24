int	ft_ispace(char c)
{
	if (c == '\t' || c == '\r' || c == '\v' || c == '\f' || c == ' ')
		return 1;
	return 0;
}
